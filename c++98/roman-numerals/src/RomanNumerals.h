/**
 * @brief Declaration of arabic to roman conversion functions.
 */

/* INCLUDES ******************************************************************/

 #include <string>

/* DECLARATIONS **************************************************************/

/**
 * @brief Converts an arabic number to roman string representation.
 *
 * @param number The arabic number.
 *
 * @return The roman number as a string. The string shall be free by the caller.
 */
std::string toRoman(unsigned int number);
