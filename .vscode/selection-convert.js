"use strict";
/**
 * A converter that takes in a chunk of selected text, extracts the text between
 * the main quotation marks, and then strips out anything but regular/visible 
 * characters in the ASCII range.
 *
 * @param {string} text
 * @return {string}
 */
function myConverter(text) {
    // Extract the text between the main speech marks (double quotes)
    const extractedText = text.match(/“([^”]+)”/);
    if (extractedText && extractedText[1]) {
        // Strip out anything but regular/visible ASCII characters
        return extractedText[1].replace(/[^\x20-\x7E]/g, '');
    }
    return '';
}

/**
 * You may want to debug your converter
 */
if (require.main === module) {
    const exampleText = `“defp offsets(:atoll), do: [{0, 0}, {0, 1}, {1, 1}, {2, 0}, {2, 1}]”

Excerpt From
Functional Web Development with Elixir, OTP, and Phoenix
Lance Halvorsen
This material may be protected by copyright.`;
    console.log(myConverter(exampleText));
}

/**
 * Don't forget to export your converter
 */
module.exports = {
    myConverter
};
//# sourceMappingURL=selection-convert.js.map
