/**
 * @file sketchify.cpp
 * Implementation of the sketchify function.
 */
#pragma GCC diagnostic ignored "-Wuninitialized"
#include <cstdlib>
#include <cmath>

#include "cs225/PNG.h"
#include "cs225/HSLAPixel.h"
using namespace cs225;

/**
 * Creates a new output image.

 * @param w width of the image
 * @param h height of the image

 * @return a pointer to the newly-created image
 */
PNG* setupOutput(unsigned w, unsigned h) {
    PNG* image = new PNG(w, h);
    return image;
}

/**
 * Used to customize the color of the sketchified image.

 * @return a pointer to the color to use when sketchifying
 */
HSLAPixel* myFavoriteColor() {
    HSLAPixel* p = new HSLAPixel(113, 0.8, 0.5);
    return p;
}

void sketchify(std::string inputFile, std::string outputFile) {
    // Load in.png
    PNG* original = new PNG();
    // std::cout << "Reached line " << __LINE__ << std::endl;
    original->readFromFile(inputFile);
    unsigned width = original->width();
    unsigned height = original->height();
    // std::cout << "Reached line " << __LINE__ << std::endl;
    // Create out.png
    // PNG* output = new PNG();
    PNG* output = setupOutput(width, height);
    // std::cout << "output width " << output->width() << std::endl;
    // std::cout << "output height " << output->height() << std::endl;
    // Load our favorite color to color the outline
    HSLAPixel* myPixel = myFavoriteColor();
    // Go over the whole image, and if a pixel differs from that to its upper
    // left, color it my favorite color in the output
    for (unsigned y = 1; y < height; y++) {
        for (unsigned x = 1; x < width; x++) {
            // std::cout << "In For loop " << __LINE__ << std::endl;
            // Calculate the pixel difference
            HSLAPixel& prev = original->getPixel(x - 1, y - 1);
            // std::cout << "Got Prev Pixel " << prev << std::endl;
            HSLAPixel& curr = original->getPixel(x, y);

            double diff = std::fabs(curr.h - prev.h);
            // std::cout << "diff " << diff << "_"<< curr.h << "_" << prev.h << std::endl;
            // If the pixel is an edge pixel,
            // color the output pixel with my favorite color

            HSLAPixel &currOutPixel = (*output).getPixel(x, y);
            // std::cout << "currOutPixel x y " << currOutPixel <<std::endl;
            if (diff > 20) {
                // std::cout << "in diff " << std::endl;
                currOutPixel = *myPixel;
                // std::cout << "get currOutPixel " << __LINE__ << std::endl;
            }
        }
    }
    std::cout << "Out of For Loop " << __LINE__ << std::endl;


    // Save the output file
    std::cout << "output " << *output << std::endl;
    output->writeToFile(outputFile);
    std::cout <<"Reached line " << __LINE__ << std::endl;
    // Clean up memory
    delete myPixel;
    delete output;
    delete original;
}
