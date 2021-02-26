Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 61944325AA1
	for <lists+cake@lfdr.de>; Fri, 26 Feb 2021 01:19:48 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id 2178A3CB43;
	Thu, 25 Feb 2021 19:19:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614298782;
	bh=V5cupIYwk+LbCvISH0Q/C2FXTUJodgMhUeCw45dcwnU=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jPRwEZogMgrNxdB/Q4JTtPSThdR2/0DZIt75pWhbBRdzxLZ7KmBLlSnbeI2Jeg0V6
	 0StGk0+/aey5olD0XEE6fYn8zpzfRSYVJvq9rhP1TfOlyHp6RftzemIcuLOWQWHQLv
	 ev5bgiFnZYPl3+p+oERLsbQaCtXwYeeYTaaiOEhEeeBG3suSOFyOUMPxV3sikgomUs
	 CABNcSmujsLloScHXrWTPFexmrJ34a0S0Sm+lvuwpBHzHbyy4Pyk/sZjF9PRGuEP59
	 /tO2d5ipsmgJONVQVh7sbdmbSZuBvqM4+0UCbdbNzPkdwp5G+VhyObkGJqtyCjp/lz
	 hC4YmNKKF8vzA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id C88F53B2A4;
 Thu, 25 Feb 2021 19:19:40 -0500 (EST)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 945249D7;
 Thu, 25 Feb 2021 19:19:39 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 25 Feb 2021 19:19:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lochnair.net; h=
 subject:to:references:from:message-id:date:mime-version
 :in-reply-to:content-type; s=fm2; bh=hGaJW2WQ2tS9hcputPtVSpZxb1H
 g8+qsfUfRtXMGd4M=; b=GUX1ChWYdTnaGwxyPJRMSdNg/ni2B3wOl2d12JdVz5j
 w34KUmlXD35PKtlyOY3GsBL89Fb6J5YBiwOzH7slclAmov05SB8dqCK3gD/dbOhf
 iC5F1ItUE2pYxhaKBDu+d8gQ80nV5P4OjmsKXxNltp5DfV1WQTPZU5Vyct66zjGP
 Msb3JaQP1BdwxLocG93V/QkMdBb90YP0zI9TY3yWI/tXUHuEjSNrrRdSeLmR5NSC
 igBg0laPDJ8fkDRo3/ittG8nB0rQ9YdYeyPORcfZAvqFiVarPDtmyMtTFEl4IC0L
 pesKgO+uEjGWXmLwmhxBxeKn2qR2s3tSsRPOourJ/JA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=hGaJW2
 WQ2tS9hcputPtVSpZxb1Hg8+qsfUfRtXMGd4M=; b=Ycu/d0KsDiZLhKSe6NnAu1
 bK1HZobB1CJoaC+TPzRAcRN0rarNzr5zPppi/OvbOCAejDBpANEjJre57q2/bJ16
 O/W3pfD+62wnUNBPT/WK1Keb6LyEXLtvZClVFu7GiLCoxNyHcyoOEHxT+sIIHc7M
 Pn1mQtBNSSE3pnNly+DrQzwhkk+w1u4v7d6iLhKpoyKq2QN1ysQyH/9zMxyicjYh
 5cB2Eb5v59+5cyERKd5MXLFgXMILPMPPrHE6BwZdIlmMTz7WsPcjENPrdjv1ysM1
 7tYvDFAkGQss/1/OhQSBHZSae3ZFw+vsY34GVYi5noZjfWYaEWgxBQ/0SK6V4VPw
 ==
X-ME-Sender: <xms:mj44YNXAjfOewHg1agqWffv2FKYfzR-x9gctzuumJ8gTzuBQ5N6KkA>
 <xme:mj44YNmU7NBtbAerTqzoKEELvxr-0Z7Z5jax5FWJaAxXQQmuMVv6sxOCVEeqDPpPP
 qobAadgVI3GYSC8Gg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrledtgddvudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefuvfhfhffkffgfgggjtgesrgdtreertdefheenucfhrhhomheppfhilhhsucet
 nhgurhgvrghsucfuvhgvvgcuoehmvgeslhhotghhnhgrihhrrdhnvghtqeenucggtffrrg
 htthgvrhhnpeeigeeiffegheegteejgfdtieevkedvuefhtdefhfdvvdfhieegueevffek
 jefgjeenucfkphepjeejrddukedrudegkedruddtgeenucevlhhushhtvghrufhiiigvpe
 dtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmvgeslhhotghhnhgrihhrrdhnvght
X-ME-Proxy: <xmx:mj44YJau4t8DQp2lu9zGnf2DLZVAM4RA7YFBQYnO1CAU0CysFJua0Q>
 <xmx:mj44YAWGikf-OtC7PxPQ_EVd4HR1fDMUz7TnxqbWza6d7YRh3JGNIw>
 <xmx:mj44YHlSQwkupvPwQHpnFGathMIih9bWaoaQExSwRNskxbD6fBy_tg>
 <xmx:mz44YMzVLtG3qW3rqBKhK8KicTrgY2NECTQuIjuRhV5MdxfFH6iKRQ>
Received: from [10.1.100.229] (77.18.148.104.tmi.telenormobil.no
 [77.18.148.104])
 by mail.messagingengine.com (Postfix) with ESMTPA id D7B2424005A;
 Thu, 25 Feb 2021 19:19:37 -0500 (EST)
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
From: Nils Andreas Svee <me@lochnair.net>
Message-ID: <9b17aa66-d02d-e262-88a3-2f36c1755667@lochnair.net>
Date: Fri, 26 Feb 2021 01:19:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <f5c96a7d5360417bbf8d71ee603eacdd@telenor.no>
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
Content-Type: multipart/mixed; boundary="===============5463421295542349636=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multi-part message in MIME format.
--===============5463421295542349636==
Content-Type: multipart/alternative;
 boundary="------------99EB4AA6D1FAA09BF8BDF909"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------99EB4AA6D1FAA09BF8BDF909
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2/25/21 9:18 AM, Taraldsen Erik wrote:

> This is getting rather rather Telenor internal and probably is not 
> true for other ISP's, but here we go.  Mobile Broad Band (MBB) is 
> handled by Telenor's Mobile division. Fixed Wireless Access (FWA) is 
> handled by Telenors Fixed division (the same group who does DSL, 
> DOCSIS and GPON).  To further complicate matters, Telenor Group 
> (holding company for Telenor Fixed and Telenor Mobile) deiced to 
> launch FWA before the new value chain was ready.  So we have two 
> versions of FWA - internally called FWA1 and FWA2.  FWA1 (which you 
> have Nils) is not fully compliant with the regulatory definition of a 
> fixed access and has very limited management support (technical 
> monitoring, firmware upgrades etc).  I'm working on the FWA2 value 
> chain and devices.
>
I'll admit it doesn't surprise me that something like that was going on, 
after we got the B818 I can't recall seeing a single new FW revision.
>
> I assume you are doing the tests on Ethernet, not wifi?  I know the 
> B818 has some wifi issues as well.  To isolate the LTE access I mean.
>
I am indeed running them on Ethernet. I don't actually use the B818 for 
anything else than as a LTE modem, so I wouldn't know, if I could get 
the thing to bridge I would. Or replace it with something else entirely 
that I can control, but that doesn't seem to be an option on FWA. That 
said the Zyxel looks like a better option since I assume it acts like a 
bridge by default.
>
> Yes interesting to see the signal stats from the device, but not 
> needed.  More for my curiosity to compare with the Zyxel devices.
>
I dumped the raw signal stats the web interface grabs in an XML file 
together with the Flent tests. Also did some upload only tests tonight 
at different speeds (no VPN in play this time).
>
> So with subscription limited to 30Mbit and probably radio head room up 
> to ~70Mbit downstream and 10Mbit upstream.  My guess is that you will 
> see more latency in the upstream direction.  I believe the B818 has 
> the very typical "1000 packets fifo, never drop" implementation.
>
Most likely yes. That's been my observation as well, that it generally 
acts up the worst when somethings using the upstream. Not entirely sure 
what I can do about that, seeing as I had to shape at 5Mbit to get rid 
of the worst spikes (but not all).


For all I know there might be something to gain by adjusting the antenna 
slightly, it's pointed in the general direction of the cell tower, but 
we didn't fine tune it (I seem to recall it was a cold winter evening).


On that point, I would've liked to collect signal stats over time, but 
the B818 seems to insist on chucking me out after being idle for a few 
minutes, better known as scraping the stats with cURL


- Nils.

>
> -Erik
>
>
>
>
>
>
>
> ------------------------------------------------------------------------
> *Fra:* Cake <cake-bounces@lists.bufferbloat.net> på vegne av Nils 
> Andreas Svee <me@lochnair.net>
> *Sendt:* torsdag 25. februar 2021 00.27
> *Til:* Taraldsen Erik; Dave Taht; bloat; cerowrt-devel; 
> Make-Wifi-fast; Toke Høiland-Jørgensen via Cake
> *Emne:* Re: [Cake] [Bloat] Fwd: [Galene] Dave on bufferbloat and 
> jitter at 8pm CET Tuesday 23
> Ah, yeah it's fixed wireless I meant. Didn't really know how to say it 
> right in English.
>
> We've got the Huawei B818-260 with an EMCOM XPOL-2 4G/5G on the wall.
>
> Yes, we've got a 30 Mbit/sec subscription. In practice we usually see 
> ~30 Mbit downstream and 10-15 upstream, and I believe when we first 
> got the B818 and antenna hooked up I measured ~70 Mbit downstream with 
> a subscription that didn't have any rate limitations, so I assumed we 
> should have a good amount of leeway if something affected the signal.
>
> Sure, I can run some more tests tomorrow. Could also grab some signal 
> stats from the B818 if those are of interest.
>
> By the way, I forgot to mention it when I posted yesterdays tests, but 
> those were conducted over a WireGuard tunnel with CAKE for the 
> downstream running on the other side. Doing that was the only way to 
> get the ADSL subscription we had to behave decently, it simply 
> couldn't handle things like Steam downloads with CAKE on a IFB device 
> in ingress mode, and shaping downstream this way kinda stuck.
>
> Best Regards
> Nils
>

--------------99EB4AA6D1FAA09BF8BDF909
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#ffffff" bgcolor="#000000">
    <p>On 2/25/21 9:18 AM, Taraldsen Erik wrote:<br>
    </p>
    <blockquote type="cite"
      cite="mid:f5c96a7d5360417bbf8d71ee603eacdd@telenor.no">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <div id="divtagdefaultwrapper" dir="ltr" style="font-size: 12pt;
        font-family: Calibri, Helvetica, sans-serif,
        &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;,
        &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
        Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
        <p>This is getting rather rather Telenor internal and probably
          is not true for other ISP's, but here we go.  Mobile Broad
          Band (MBB) is handled by Telenor's Mobile division. Fixed
          Wireless Access (FWA) is handled by Telenors Fixed division
          (the same group who does DSL, DOCSIS and GPON).  To further
          complicate matters, Telenor Group (holding company for Telenor
          Fixed and Telenor Mobile) deiced to launch FWA before the new
          value chain was ready.  So we have two versions of FWA -
          internally called FWA1 and FWA2.  FWA1 (which you have Nils)
          is not fully compliant with the regulatory definition of a
          fixed access and has very limited management support
          (technical monitoring, firmware upgrades etc).  I'm working on
          the FWA2 value chain and devices.</p>
      </div>
    </blockquote>
    I'll admit it doesn't surprise me that something like that was going
    on, after we got the B818 I can't recall seeing a single new FW
    revision.<br>
    <blockquote type="cite"
      cite="mid:f5c96a7d5360417bbf8d71ee603eacdd@telenor.no">
      <div id="divtagdefaultwrapper" dir="ltr" style="font-size: 12pt;
        font-family: Calibri, Helvetica, sans-serif,
        &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;,
        &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
        Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
        <p>
        </p>
        <p>I assume you are doing the tests on Ethernet, not wifi?  I
          know the B818 has some wifi issues as well.  To isolate the
          LTE access I mean. 
          <br>
        </p>
      </div>
    </blockquote>
    I am indeed running them on Ethernet. I don't actually use the B818
    for anything else than as a LTE modem, so I wouldn't know, if I
    could get the thing to bridge I would. Or replace it with something
    else entirely that I can control, but that doesn't seem to be an
    option on FWA. That said the Zyxel looks like a better option since
    I assume it acts like a bridge by default.<br>
    <blockquote type="cite"
      cite="mid:f5c96a7d5360417bbf8d71ee603eacdd@telenor.no">
      <div id="divtagdefaultwrapper" dir="ltr" style="font-size: 12pt;
        font-family: Calibri, Helvetica, sans-serif,
        &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;,
        &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
        Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
        <p>
        </p>
        <p>Yes interesting to see the signal stats from the device, but
          not needed.  More for my curiosity to compare with the Zyxel
          devices.</p>
      </div>
    </blockquote>
    I dumped the raw signal stats the web interface grabs in an XML file
    together with the Flent tests. Also did some upload only tests
    tonight at different speeds (no VPN in play this time).<br>
    <blockquote type="cite"
      cite="mid:f5c96a7d5360417bbf8d71ee603eacdd@telenor.no">
      <div id="divtagdefaultwrapper" dir="ltr" style="font-size: 12pt;
        font-family: Calibri, Helvetica, sans-serif,
        &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;,
        &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
        Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
        <p>
        </p>
        <p>So with subscription limited to 30Mbit and probably radio
          head room up to ~70Mbit downstream and 10Mbit upstream.  My
          guess is that you will see more latency in the upstream
          direction.  I believe the B818 has the very typical "1000
          packets fifo, never drop" implementation.</p>
      </div>
    </blockquote>
    <p>Most likely yes. That's been my observation as well, that it
      generally acts up the worst when somethings using the upstream.
      Not entirely sure what I can do about that, seeing as I had to
      shape at 5Mbit to get rid of the worst spikes (but not all).</p>
    <p><br>
    </p>
    <p>For all I know there might be something to gain by adjusting the
      antenna slightly, it's pointed in the general direction of the
      cell tower, but we didn't fine tune it (I seem to recall it was a
      cold winter evening).</p>
    <p><br>
    </p>
    <p>On that point, I would've liked to collect signal stats over
      time, but the B818 seems to insist on chucking me out after being
      idle for a few minutes, better known as scraping the stats with
      cURL</p>
    <p><br>
    </p>
    <p>- Nils.<br>
    </p>
    <blockquote type="cite"
      cite="mid:f5c96a7d5360417bbf8d71ee603eacdd@telenor.no">
      <div id="divtagdefaultwrapper" dir="ltr" style="font-size: 12pt;
        font-family: Calibri, Helvetica, sans-serif,
        &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;,
        &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI
        Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
        <p>
        </p>
        <p><br>
        </p>
        <p>-Erik<br>
        </p>
        <p><br>
        </p>
        <p><br>
        </p>
        <p><br>
        </p>
        <p><br>
        </p>
        <br>
        <br>
        <div>
          <hr tabindex="-1" style="display:inline-block; width:98%">
          <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
              face="Calibri, sans-serif"><b>Fra:</b> Cake
              <a class="moz-txt-link-rfc2396E" href="mailto:cake-bounces@lists.bufferbloat.net">&lt;cake-bounces@lists.bufferbloat.net&gt;</a> på vegne av
              Nils Andreas Svee <a class="moz-txt-link-rfc2396E" href="mailto:me@lochnair.net">&lt;me@lochnair.net&gt;</a><br>
              <b>Sendt:</b> torsdag 25. februar 2021 00.27<br>
              <b>Til:</b> Taraldsen Erik; Dave Taht; bloat;
              cerowrt-devel; Make-Wifi-fast; Toke Høiland-Jørgensen via
              Cake<br>
              <b>Emne:</b> Re: [Cake] [Bloat] Fwd: [Galene] Dave on
              bufferbloat and jitter at 8pm CET Tuesday 23</font>
            <div> </div>
          </div>
          <div>
            <div>Ah, yeah it's fixed wireless I meant. Didn't really
              know how to say it right in English.<br>
            </div>
            <div><br>
            </div>
            <div>We've got the Huawei B818-260 with an <span style=""><span
                  class="font" style="font-family:Roboto,Arial">EMCOM
                  XPOL-2 4G/5G on the wall.</span></span><br>
            </div>
            <div><br>
            </div>
            <div><span style=""><span class="font"
                  style="font-family:Roboto,Arial">Yes, we've got a 30
                  Mbit/sec subscription. In practice we usually see ~30
                  Mbit downstream and 10-15 upstream, and I believe when
                  we first got the B818 and antenna hooked up I measured
                  ~70 Mbit downstream with a subscription that didn't
                  have any rate limitations, so I assumed we should have
                  a good amount of leeway if something affected the
                  signal.</span></span><br>
            </div>
            <div><br>
            </div>
            <div>Sure, I can run some more tests tomorrow. Could also
              grab some signal stats from the B818 if those are of
              interest.<br>
            </div>
            <div><br>
            </div>
            <div>By the way, I forgot to mention it when I posted
              yesterdays tests, but those were conducted over a
              WireGuard tunnel with CAKE for the downstream running on
              the other side. Doing that was the only way to get the
              ADSL subscription we had to behave decently, it simply
              couldn't handle things like Steam downloads with CAKE on a
              IFB device in ingress mode, and shaping downstream this
              way kinda stuck.<br>
            </div>
            <div><br>
            </div>
            <div id="sig44785538">
              <div class="signature">Best Regards<br>
              </div>
              <div class="signature">Nils<br>
              </div>
            </div>
            <div><br>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
  </body>
</html>

--------------99EB4AA6D1FAA09BF8BDF909--

--===============5463421295542349636==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============5463421295542349636==--
