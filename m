Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A46C326400
	for <lists+cake@lfdr.de>; Fri, 26 Feb 2021 15:25:33 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DF3BC3CB38;
	Fri, 26 Feb 2021 09:25:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614349531;
	bh=JZAY8WBPI5fxpuYlqiBOzom5q94SgdME2xcOEn1ZWLQ=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nBesw1WGmYimGW/QqHDuYWaeVNNTEcLcWMPPICliMk29Q5Ns3LFWeiQWCFY9Oruus
	 O3Vk2AQh34Ug6o9ztwNevH6GQsv9si7lZN55bAviJJxLuwV1q1nVZew4beOmPu2yvm
	 lSvMw8fLgg4mDhCuY10lc5de5LyyURE1iHf4NuFZjl4snEuUF7ansHJQdoAxS0fmJf
	 bXedNHjN3LRvySc0wTRzA78Fvt14Wqj5ht9RroHDYNEoBMhhDyGS97N4INX/PDpERV
	 oa7ZZKJZIKPIuVyv8oaRXl+3wxCLuLMfKILwS9ivdyl+sYKI2NhRqXCtNG/tPNaYuF
	 RQqokKB24UVCA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 4090C3B29E;
 Fri, 26 Feb 2021 09:25:31 -0500 (EST)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 16A1CB57;
 Fri, 26 Feb 2021 09:25:30 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Fri, 26 Feb 2021 09:25:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 subject:to:references:from:message-id:date:mime-version
 :in-reply-to:content-type; s=fm2; bh=odxkQW3PBKT+yw7g9YBjlfCyVY+
 dS2ynxR13ZHS049s=; b=IJs1uJV7wpVf6nCtkSeREJ5GfvB7tS8CMNe2PeLcU/L
 7oue1Si3kBbGrBQe7XxCS8/Ucy4ki398f6evJZAnL8utIpHPoLjEuFtE2ef+F4DX
 7h6ecCJvzeJLuzTAkAf74sQud0cC0xFvnZwaXuAei5hBfw5Iv5ImJXvPNgiHWBz1
 HPPJe46ThTL51yPOIIO7z/ia3lgt9UHqgBjQGKnp8f3T2XTvEMXfQDADfFuV2nWp
 0j6CPZi3kCMZ06chMRitatVdh16xSAJEX8VSedW6hQirF7smEu+4dRewbXkpFmNe
 zdktT+wxCFmmWvcvysUPGQqbreanXdtJKd64YU895FQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=odxkQW
 3PBKT+yw7g9YBjlfCyVY+dS2ynxR13ZHS049s=; b=RD6mhQtC8TwjuHvwfc5m97
 wTu6jdlLjJnen2eeEu8OMQWXa1ZQxCFMQSzDxJNAV7XynMFSXKoq6TIvtKKIAS7H
 GsRnVM1XrYod9gtklKRj3VpYISq6W6egzMiWIg7itmtIdFkJd6dC0WPxDbBAGO3Z
 W2uexj7SiKv4XmMtSW6juaZklIWl2+89Kjr2hNYpnAGB0uWOLuvtAtu/4HyG3z3s
 I7xOqiqW60iTP2zZmBcIeMKLhUItzQD//pIDjK6jAoOOKl1a0rr+XR15ZWyXhiVh
 YzTpqtJ/16Hw7/1YAhSbR0pRdyj27r+1TGyAYv17rjyXNnKOuKkZ/MhreuValzJw
 ==
X-ME-Sender: <xms:2QQ5YHHTsdvieoDWc2bAKtNxRb7AhT9iyh_ewLjWU8_Yo75ZkvqXZw>
 <xme:2QQ5YCTWtGA7OvninFnXjWbaJ8qrwiRw0tUNLLamNKizNbEYeqwOnRov1lCeaQJGq
 CwnoLBRcFA8a5i2vQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrledugdeiiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgesrgdtreertdefheenucfhrhhomheppfhilhhsucet
 nhgurhgvrghsucfuvhgvvgcuoehmvgeslhhotghhnhgrihhrrdhnvghtqeenucggtffrrg
 htthgvrhhnpeeigeeiffegheegteejgfdtieevkedvuefhtdefhfdvvdfhieegueevffek
 jefgjeenucfkphepjeejrddukedrudegkedruddtgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmvgeslhhotghhnhgrihhrrdhnvght
X-ME-Proxy: <xmx:2QQ5YAsDWjDwWxLMpi9j4RrqLArpoG3EpZv31UV0XxKYPWT7ZefGmg>
 <xmx:2QQ5YBwZy2oMq-diw0P6UhwZGMriGPZepZTlL-8a7YXHOmvVuXRszA>
 <xmx:2QQ5YK6LbToqa1pQDP6XgcKOiI6-gmXSEceasbzZ7-Z6_csKGvtyug>
 <xmx:2QQ5YBBvGPDho311kPFkziazLUu-wVbKATGGp3zUBSXDLk4UcZ6r2A>
Received: from [10.1.100.229] (77.18.148.104.tmi.telenormobil.no
 [77.18.148.104])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6439624005D;
 Fri, 26 Feb 2021 09:25:28 -0500 (EST)
To: Taraldsen Erik <erik.taraldsen@telenor.no>,
 Dave Taht <dave.taht@gmail.com>, bloat <bloat@lists.bufferbloat.net>,
 Make-Wifi-fast <make-wifi-fast@lists.bufferbloat.net>,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
References: <874ki24ref.wl-jch@irif.fr>
 <CAA93jw5GdseVR+mUwYKg53ToRdKrU-v-ZLHaKnbDZ1Y65DLBDg@mail.gmail.com>
 <1e41ddf7-cd08-4fec-b31a-3021f8111dc6@www.fastmail.com>
 <2f30c201fce345658df9f2a5090745cf@telenor.no>
 <480413c4-e9a1-4b78-8ef6-3d8658836874@www.fastmail.com>
 <f5c96a7d5360417bbf8d71ee603eacdd@telenor.no>
 <9b17aa66-d02d-e262-88a3-2f36c1755667@lochnair.net>
 <53f6b6b3f5b043feb841c9c33fd1f480@telenor.no>
From: Nils Andreas Svee <me@lochnair.net>
Message-ID: <26ed70a5-6638-3298-3c8a-467b2561dbbf@lochnair.net>
Date: Fri, 26 Feb 2021 15:25:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <53f6b6b3f5b043feb841c9c33fd1f480@telenor.no>
Content-Language: en-US
Subject: Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and jitter at
 8pm CET Tuesday 23
X-BeenThere: cake@lists.bufferbloat.net
X-Mailman-Version: 2.1.20
Precedence: list
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
List-Unsubscribe: <https://lists.bufferbloat.net/options/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=unsubscribe>
List-Archive: <https://lists.bufferbloat.net/pipermail/cake>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Subscribe: <https://lists.bufferbloat.net/listinfo/cake>,
 <mailto:cake-request@lists.bufferbloat.net?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5341192386228220108=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multi-part message in MIME format.
--===============5341192386228220108==
Content-Type: multipart/alternative;
 boundary="------------AED6AECBA902565A2E4E83B6"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------AED6AECBA902565A2E4E83B6
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit


On 2/26/21 8:26 AM, Taraldsen Erik wrote:
> *Fra:* Nils Andreas Svee <me@lochnair.net>
>
>     I am indeed running them on Ethernet. I don't actually use the
>     B818 for anything else than as a LTE modem, so I wouldn't know, if
>     I could get the thing to bridge I would. Or replace it with
>     something else entirely that I can control, but that doesn't seem
>     to be an option on FWA. That said the Zyxel looks like a better
>     option since I assume it acts like a bridge by default.
>
> The Zyxel device indeed acts as a bridge, or at least as close 
> approximation as we can get it.  The PDP addressing protocol in mobile 
> networks requres the address termination to happen where the SIM card 
> resides.  So the device does some trickery with brctl, routing and 
> iptables to simulate a bridge setup.
>
Oh nice. Sure it's not a "true" bridge, but for all intents and purposes 
it gets the job done. Kinda tempting to get one of those now, if only to 
avoid the whole using DMZ mode on the B818 to pass everything through.
>
>     I dumped the raw signal stats the web interface grabs in an XML
>     file together with the Flent tests. Also did some upload only
>     tests tonight at different speeds (no VPN in play this time).
>
> rsrp is good and rsrq is great at your location.  However you have 
> ended up on the 800MHz band.  That is intended for coverage, not 
> capacity.  It uses only 10MHz bandwitdh and is shared with a lot more 
> customers.  You probably should be able to get an 1800MHz frequency 
> which has 20MHz and is shared among fewer customers.
>
Yeah I thought it should be pretty good. I don't really know how to 
interpret those numbers, but Teltonika's guidelines seemed to indicate 
that it should be good.

Good point about the bands. For the first months after we signed up it 
tended to switch between 800Mhz and 1800Mhz and mostly stay on 1800Mhz, 
but now it's been stuck on 800Mhz for quite some time.

I wanted to try and lock it to 1800Mhz, but there's no option for that 
exposed in the GUI that I can find.

>     Most likely yes. That's been my observation as well, that it
>     generally acts up the worst when somethings using the upstream.
>     Not entirely sure what I can do about that, seeing as I had to
>     shape at 5Mbit to get rid of the worst spikes (but not all). 
>
> This is tricky.  You don't have a static set of resources.  You 
> request resources "as needed".  The "as needed" amongst other things 
> reads the buffer back pressure.  So if you shape to far down the LTE 
> device will not request enough resources.  Shape to high and there 
> will not be enough resources available to share.  And available 
> resources vary with number of subscribers on that cell, weather, the 
> subscribers usage and interference from other cell towers.  To get a 
> proper solution to this I don't see a way around getting the chipset 
> manufacturers on board.
>
>
Downside of shared mediums of course. So basically my best bet is to 
find somewhere in the middle to shape on, or use the pping stuff to 
somehow dynamically configure it. Of course, but we don't really have a 
voice with them, so the best we can do is support your efforts however 
we can.
>
>
>     On that point, I would've liked to collect signal stats over time,
>     but the B818 seems to insist on chucking me out after being idle
>     for a few minutes, better known as scraping the stats with cURL
>
>
> Have you tried to use the telnet service port (20249) on the B818?  
> Not all variants have that open but you could give it a shot.  You 
> also may need to acquire an datalock code for the "at^datalock=" command.
>
> telnet LAN_IP 20249
>
I had not, I didn't scan higher ports. It *is* open though, so I was 
able to connect to it. It only yells at me if I try to run any of the 
few AT commands I know (except /at)/, not sure if that's because of the 
datalock code. If that's what I'm missing, how does one go about getting 
a hold of one of those? When I looked it up I only found some sites I 
have concern about the legitimacy of.
>
>
> This is getting LTE/5G spesific.  Not sure if it belongs on the list.  
> Let us know if we are generating noise.
>
>
> -Erik

--------------AED6AECBA902565A2E4E83B6
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#ffffff" bgcolor="#000000">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2/26/21 8:26 AM, Taraldsen Erik
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:53f6b6b3f5b043feb841c9c33fd1f480@telenor.no">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <div id="divtagdefaultwrapper" style="font-size: 12pt;
        font-family: Calibri, Helvetica, sans-serif,
        &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;,
        &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
        Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;"
        dir="ltr">
        <font style="font-size:11pt" face="Calibri, sans-serif"><b>Fra:</b>
          Nils Andreas Svee <a class="moz-txt-link-rfc2396E" href="mailto:me@lochnair.net">&lt;me@lochnair.net&gt;</a></font><br>
        <div>
          <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
              face="Calibri, sans-serif"><br>
            </font></div>
          <blockquote>
            <div dir="ltr">I am indeed running them on Ethernet. I don't
              actually use the B818 for anything else than as a LTE
              modem, so I wouldn't know, if I could get the thing to
              bridge I would. Or replace it with something else entirely
              that I can control, but that doesn't seem to be an option
              on FWA. That said the Zyxel looks like a better option
              since I assume it acts like a bridge by default.<br>
            </div>
          </blockquote>
          <div>The Zyxel device indeed acts as a bridge, or at least as
            close approximation as we can get it.  The PDP addressing
            protocol in mobile networks requres the address termination
            to happen where the SIM card resides.  So the device does
            some trickery with brctl, routing and iptables to simulate a
            bridge setup.</div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    Oh nice. Sure it's not a "true" bridge, but for all intents and
    purposes it gets the job done. Kinda tempting to get one of those
    now, if only to avoid the whole using DMZ mode on the B818 to pass
    everything through.<br>
    <blockquote type="cite"
      cite="mid:53f6b6b3f5b043feb841c9c33fd1f480@telenor.no">
      <div id="divtagdefaultwrapper" style="font-size: 12pt;
        font-family: Calibri, Helvetica, sans-serif,
        &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;,
        &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
        Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;"
        dir="ltr">
        <div>
          <div>
          </div>
          <div><br>
          </div>
          <blockquote>
            <div>I dumped the raw signal stats the web interface grabs
              in an XML file together with the Flent tests. Also did
              some upload only tests tonight at different speeds (no VPN
              in play this time).</div>
          </blockquote>
          <div>rsrp is good and rsrq is great at your location.  However
            you have ended up on the 800MHz band.  That is intended for
            coverage, not capacity.  It uses only 10MHz bandwitdh and is
            shared with a lot more customers.  You probably should be
            able to get an 1800MHz frequency which has 20MHz and is
            shared among fewer customers.<br>
          </div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    <p>Yeah I thought it should be pretty good. I don't really know how
      to interpret those numbers, but Teltonika's guidelines seemed to
      indicate that it should be good.</p>
    <p>Good point about the bands. For the first months after we signed
      up it tended to switch between 800Mhz and 1800Mhz and mostly stay
      on 1800Mhz, but now it's been stuck on 800Mhz for quite some time.</p>
    <p>I wanted to try and lock it to 1800Mhz, but there's no option for
      that exposed in the GUI that I can find.<br>
    </p>
    <blockquote type="cite"
      cite="mid:53f6b6b3f5b043feb841c9c33fd1f480@telenor.no">
      <div id="divtagdefaultwrapper" style="font-size: 12pt;
        font-family: Calibri, Helvetica, sans-serif,
        &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;,
        &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
        Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;"
        dir="ltr">
        <div>
          <div>
          </div>
          <div>
            <blockquote>Most likely yes. That's been my observation as
              well, that it generally acts up the worst when somethings
              using the upstream. Not entirely sure what I can do about
              that, seeing as I had to shape at 5Mbit to get rid of the
              worst spikes (but not all).
            </blockquote>
            <p>This is tricky.  You don't have a static set of
              resources.  You request resources "as needed".  The "as
              needed" amongst other things reads the buffer back
              pressure.  So if you shape to far down the LTE device will
              not request enough resources.  Shape to high and there
              will not be enough resources available to share.  And
              available resources vary with number of subscribers on
              that cell, weather, the subscribers usage and interference
              from other cell towers.  To get a proper solution to this
              I don't see a way around getting the chipset manufacturers
              on board.</p>
            <p><br>
            </p>
          </div>
        </div>
      </div>
    </blockquote>
    Downside of shared mediums of course. So basically my best bet is to
    find somewhere in the middle to shape on, or use the pping stuff to
    somehow dynamically configure it. Of course, but we don't really
    have a voice with them, so the best we can do is support your
    efforts however we can.<br>
    <blockquote type="cite"
      cite="mid:53f6b6b3f5b043feb841c9c33fd1f480@telenor.no">
      <div id="divtagdefaultwrapper" style="font-size: 12pt;
        font-family: Calibri, Helvetica, sans-serif,
        &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;,
        &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
        Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;"
        dir="ltr">
        <div>
          <div>
            <p>
            </p>
            <br>
            <blockquote>
              <p>On that point, I would've liked to collect signal stats
                over time, but the B818 seems to insist on chucking me
                out after being idle for a few minutes, better known as
                scraping the stats with cURL</p>
            </blockquote>
            <p><br>
            </p>
          </div>
          <div>Have you tried to use the telnet service port (20249) on
            the B818?  Not all variants have that open but you could
            give it a shot.  You also may need to acquire an datalock
            code for the "<span>at^datalock=" command.  </span><br>
          </div>
          <div><br>
          </div>
          <div>telnet LAN_IP 20249<br>
          </div>
          <div><br>
          </div>
        </div>
      </div>
    </blockquote>
    I had not, I didn't scan higher ports. It *is* open though, so I was
    able to connect to it. It only yells at me if I try to run any of
    the few AT commands I know (except <i>at)</i>, not sure if that's
    because of the datalock code. If that's what I'm missing, how does
    one go about getting a hold of one of those? When I looked it up I
    only found some sites I have concern about the legitimacy of.<br>
    <blockquote type="cite"
      cite="mid:53f6b6b3f5b043feb841c9c33fd1f480@telenor.no">
      <div id="divtagdefaultwrapper" style="font-size: 12pt;
        font-family: Calibri, Helvetica, sans-serif,
        &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;,
        &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
        Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;"
        dir="ltr">
        <div>
          <div>
          </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>This is getting LTE/5G spesific.  Not sure if it belongs
            on the list.  Let us know if we are generating noise.</div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>-Erik<br>
          </div>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------AED6AECBA902565A2E4E83B6--

--===============5341192386228220108==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5341192386228220108==--
