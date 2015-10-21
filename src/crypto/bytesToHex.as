/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package crypto
{
    import flash.utils.ByteArray;

    /**
     * 
     * @playerversion Flash 9
     * @playerversion AIR 1.0
     * @playerversion AVM 0.4
     * @langversion 3.0
     */
    public function bytesToHex( bytes:ByteArray ):String
    {
        var str:String = "";
        var i:uint;
        var l:uint = bytes.length;
        bytes.position = 0;
        var byte:uint;
        for( i=0; i<l; i++ )
        {
            byte = bytes[ i ];
            str += uintToHex( byte );
        }
        
        return str;
    }
}