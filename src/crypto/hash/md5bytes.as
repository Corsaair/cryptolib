/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package crypto.hash
{
    import flash.utils.ByteArray;

    /**
     * Calculate the md5 hash of a serie of bytes.
     * 
     * <p>
     * To show the returned ByteArray hash as
     * a 32-character hexadecimal number simply
     * use the function bytesToHex() on the result.
     * </p>
     * 
     * @return Returns a 32 bytes length ByteArray.
     * 
     * @playerversion Flash 9
     * @playerversion AIR 1.0
     * @playerversion AVM 0.4
     * @langversion 3.0
     */
    public function md5bytes( bytes:ByteArray ):ByteArray
    {
        return md5_t.md5Bytes( bytes );
    }
}