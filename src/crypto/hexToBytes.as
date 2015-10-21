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
    public function hexToBytes( hex:String ):ByteArray
    {
        var len:uint = hex.length;
        
        if( (len%2) != 0  )
        {
            throw new Error( "Hex string is not a multiple of 2" );
        }
        
        var bytes:ByteArray = new ByteArray();
        
        var i:uint;
        var str:String;
        var num:uint;
        for( i = 0; i < len; i++ )
        {
            str = hex.charAt( i ) + hex.charAt( i + 1 );
            num = parseInt( "0x" + str );
            bytes.writeByte( num );
        }
        
        bytes.position = 0;
        return bytes;
    }
}