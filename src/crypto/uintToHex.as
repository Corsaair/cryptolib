/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package crypto
{
    
    /**
     * 
     * @playerversion Flash 9
     * @playerversion AIR 1.0
     * @playerversion AVM 0.4
     * @langversion 3.0
     */
    public function uintToHex( n:uint ):String
    {
        const c:Array = [ '0', '1', '2', '3', '4', '5', '6', '7',
                          '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' ];
        if( n > 0xFF )
        {
            n = 0xFF;
        }
        
        return c[ uint(n/16) ] + c[ uint(n%16) ];
    }
}