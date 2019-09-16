Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [45.79.142.77])
	by mail.lfdr.de (Postfix) with ESMTPS id 391A7B380A
	for <lists+cake@lfdr.de>; Mon, 16 Sep 2019 12:22:36 +0200 (CEST)
Received: from pitt.bufferbloat.net (localhost [IPv6:::1])
	by lists.bufferbloat.net (Postfix) with ESMTP id A9B533CB40;
	Mon, 16 Sep 2019 06:22:34 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1568629354;
	bh=DJq34dlj7/Nh7058QC0lioAKUNtV2stRXFIohyDZ45o=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VGeWLZTedeKjLQB5dc79QmfguFQpg37/LO8RsgrxexoeuNT/HmMVnpEmM8cfLPURm
	 WEzVcYQ5wMQmZTXOdFWbov8G0sI3WXX4tG4JFuaBTgQ8+wTLnu74DZ1p7G/jFilZlg
	 nvAx+nuOZQfRSgz1y4bGZUKWn5VJgMqPuPmiawa0jFsgbVVr9xc+UvXQQ3irn+NUwc
	 D5+Eufp1/otoU6HWhSgVyswTPNZF7KF3EoR2C1DaP2WZYcHxPwSdo+NCq/aCv+ng20
	 G1+fsYjXIt6p70nYZAF10DBupfIjNPi8COyZIj8eG4kDTe4WJbtUPmb3/ElcX0acdF
	 t4hUCXxvPgOsg==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from webmail.newmedia-net.de (smtps.newmedia-net.de
 [IPv6:2a05:a1c0:0:de::167])
 (using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id B034C3CB35
 for <cake@lists.bufferbloat.net>; Mon, 16 Sep 2019 06:22:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
 bh=4rIgkyMDm2pmPz7WcSWDeufFh7PozknVzaBxEtJQlEQ=; 
 b=FscsjgPN5zpsQ4L9p43Z06kBCGbRTpKz866RXXA9UZlqVf2LCo11/zete+5AKGjVqlxsuYUajIzOfU2I1CvylqYjczQXL1GttnlhDrVTb4sbb6PDdumw5wDoWzOpLijTPWcxGX6Q+ofCnDaPX/D4l1zTGD+ap673OrAkYkkmBSE=;
To: cake@lists.bufferbloat.net
References: <ac3db996-6769-4e38-b19b-eaa08ac40cd5@www.fastmail.com>
 <2825CE14-2109-4580-A086-9701F4D3ADF0@gmail.com>
 <18b1c174-b88d-4664-9aa8-9c42925fc14c@www.fastmail.com>
 <E0C914DE-893D-4B14-9179-F10EB595DE0C@gmail.com>
 <9a90111b-2389-4dc6-8409-18c40f895540@www.fastmail.com>
 <43F02160-E691-4393-A0C0-8AB4AD962700@gmail.com>
 <a75b079e-8a29-46f1-9890-7eb73e18b0f2@www.fastmail.com>
 <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <057ea708-6797-23f5-ef01-9d3d7b002578@newmedia-net.de>
Date: Mon, 16 Sep 2019 12:21:02 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.0
MIME-Version: 1.0
In-Reply-To: <E975CC03-A531-4450-A896-5C3921A9D063@gmail.com>
X-Received: from [212.111.244.1] (helo=[172.29.0.186])
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1i9o9X-00006E-FU
 for cake@lists.bufferbloat.net; Mon, 16 Sep 2019 12:22:39 +0200
Subject: [Cake] cake memory consumption
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
Content-Type: multipart/mixed; boundary="===============2985598976982647864=="
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multi-part message in MIME format.
--===============2985598976982647864==
Content-Type: multipart/alternative;
 boundary="------------B4B8411D588B2C083E8FF7E3"

This is a multi-part message in MIME format.
--------------B4B8411D588B2C083E8FF7E3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

after we found out serious out of memory issues on smaller embedded 
devices (128 mb ram) we made some benchmarks with different schedulers
with the result that cake takes a serious amount of memory. we use the 
out of tree cake module and we use it class based since we have complex 
methods of doing qos per interface, per mac addresse or even per 
ip/network. so its not just simple cake on a single interface solution. 
we made some benchmarks with different schedulers. does anybody have a 
solution for making that better?

HTB/FQ_CODEL ------- 62M
HTB/SFQ ------- 62M
HTB/PIE ------- 62M
HTB/FQ_CODEL_FAST ------- 67M
HTB/CAKE -------111M

HFSC/FQ_CODEL_FAST ------- 47M
HTB/PIE ------- 49M
HTB/SFQ ------- 50M
HFSC /FQ_CODEL ------- 52M
HFSC/CAKE -------109M


consider that the benchmark doesnt show the real values. its system 
overall and does not consider memory taken by the wireless driver for 
instance which is about 45 mb of ram for ath10k
so this makes all even more worse unfortunatly since there is not that 
many ram left for cake. just about 70mb maybe.
Am 08.09.2019 um 19:27 schrieb Jonathan Morton:
>>> You could also set it back to 'internet' and progressively reduce the
>>> bandwidth parameter, making the Cake shaper into the actual bottleneck.
>>> This is the correct fix for the problem, and you should notice an
>>> instant improvement as soon as the bandwidth parameter is correct.
>> Hand tuning this one link is not a problem. I'm searching for a set of settings that will provide generally good performance across a wide range of devices, links, and situations.
>>
>>  From what you've indicated so far there's nothing as effective as a correct bandwidth estimation if we consider the antenna (link) a black box. Expecting the user to input expected throughput for every link and then managing that information is essentially a non-starter.
>>
>> Radio tuning provides some improvement, but until ubiquiti starts shipping with Codel on non-router devices I don't think there's a good solution here.
>>
>> Any way to have the receiving device detect bloat and insert an ECN?
> That's what the qdisc itself is supposed to do.
>
>> I don't think the time spent in the intermediate device is detectable at the kernel level but we keep track of latency for routing decisions and could detect bloat with some accuracy, the problem is how to respond.
> As long as you can detect which link the bloat is on (and in which direction), you can respond by reducing the bandwidth parameter on that half-link by a small amount.  Since you have a cooperating network, maintaining a time standard on each node sufficient to observe one-way delays seems feasible, as is establishing a normal baseline latency for each link.
>
> The characteristics of the bandwidth parameter being too high are easy to observe.  Not only will the one-way delay go up, but the received throughput in the same direction at the same time will be lower than configured.  You might use the latter as a hint as to how far you need to reduce the shaped bandwidth.
>
> Deciding when and by how much to *increase* bandwidth, which is presumably desirable when link conditions improve, is a more difficult problem when the link hardware doesn't cooperate by informing you of its status.  (This is something you could reasonably ask Ubiquiti to address.)
>
> I would assume that link characteristics will change slowly, and run an occasional explicit bandwidth probe to see if spare bandwidth is available.  If that probe comes through without exhibiting bloat, *and* the link is otherwise loaded to capacity, then increase the shaper by an amount within the probe's capacity of measurement - and schedule a repeat.
>
> A suitable probe might be 100x 1500b packets paced out over a second, bypassing the shaper.  This will occupy just over 1Mbps of bandwidth, and can be expected to induce 10ms of delay if injected into a saturated 100Mbps link.  Observe the delay experienced by each packet *and* the quantity of other traffic that appears between them.  Only if both are favourable can you safely open the shaper, by 1Mbps.
>
> Since wireless links can be expected to change their capacity over time, due to eg. weather and tree growth, this seems to be more generally useful than a static guess.  You could deploy a new link with a conservative "guess" of say 10Mbps, and just probe from there.
>
>   - Jonathan Morton
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake

--------------B4B8411D588B2C083E8FF7E3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>after we found out serious out of memory issues on smaller
      embedded devices (128 mb ram) we made some benchmarks with
      different schedulers<br>
      with the result that cake takes a serious amount of memory. we use
      the out of tree cake module and we use it class based since we
      have complex methods of doing qos per interface, per mac addresse
      or even per ip/network. so its not just simple cake on a single
      interface solution. we made some benchmarks with different
      schedulers. does anybody have a solution for making that better?</p>
    <pre class="wiki" style="background: rgb(247, 247, 247); border: 1px solid rgb(215, 215, 215); box-shadow: rgb(238, 238, 238) 0px 0px 1em; border-radius: 0.3em; margin: 1em 1.75em; padding: 0.25em; overflow: auto; clear: right; color: rgb(0, 0, 0); font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">HTB/FQ_CODEL ------- 62M
HTB/SFQ ------- 62M
HTB/PIE ------- 62M
HTB/FQ_CODEL_FAST ------- 67M
HTB/CAKE -------111M

HFSC/FQ_CODEL_FAST ------- 47M
HTB/PIE ------- 49M
HTB/SFQ ------- 50M
HFSC /FQ_CODEL ------- 52M
HFSC/CAKE -------109M</pre>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">consider that the benchmark doesnt show
      the real values. its system overall and does not consider memory
      taken by the wireless driver for instance which is about 45 mb of
      ram for ath10k <br>
      so this makes all even more worse unfortunatly since there is not
      that many ram left for cake. just about 70mb maybe.<br>
    </div>
    <div class="moz-cite-prefix">Am 08.09.2019 um 19:27 schrieb Jonathan
      Morton:<br>
    </div>
    <blockquote type="cite"
      cite="mid:E975CC03-A531-4450-A896-5C3921A9D063@gmail.com">
      <blockquote type="cite">
        <blockquote type="cite">
          <pre class="moz-quote-pre" wrap="">You could also set it back to 'internet' and progressively reduce the 
bandwidth parameter, making the Cake shaper into the actual bottleneck. 
This is the correct fix for the problem, and you should notice an 
instant improvement as soon as the bandwidth parameter is correct.
</pre>
        </blockquote>
        <pre class="moz-quote-pre" wrap="">
Hand tuning this one link is not a problem. I'm searching for a set of settings that will provide generally good performance across a wide range of devices, links, and situations. 

From what you've indicated so far there's nothing as effective as a correct bandwidth estimation if we consider the antenna (link) a black box. Expecting the user to input expected throughput for every link and then managing that information is essentially a non-starter. 

Radio tuning provides some improvement, but until ubiquiti starts shipping with Codel on non-router devices I don't think there's a good solution here. 

Any way to have the receiving device detect bloat and insert an ECN?
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
That's what the qdisc itself is supposed to do.

</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">I don't think the time spent in the intermediate device is detectable at the kernel level but we keep track of latency for routing decisions and could detect bloat with some accuracy, the problem is how to respond.
</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">
As long as you can detect which link the bloat is on (and in which direction), you can respond by reducing the bandwidth parameter on that half-link by a small amount.  Since you have a cooperating network, maintaining a time standard on each node sufficient to observe one-way delays seems feasible, as is establishing a normal baseline latency for each link.

The characteristics of the bandwidth parameter being too high are easy to observe.  Not only will the one-way delay go up, but the received throughput in the same direction at the same time will be lower than configured.  You might use the latter as a hint as to how far you need to reduce the shaped bandwidth.

Deciding when and by how much to *increase* bandwidth, which is presumably desirable when link conditions improve, is a more difficult problem when the link hardware doesn't cooperate by informing you of its status.  (This is something you could reasonably ask Ubiquiti to address.)

I would assume that link characteristics will change slowly, and run an occasional explicit bandwidth probe to see if spare bandwidth is available.  If that probe comes through without exhibiting bloat, *and* the link is otherwise loaded to capacity, then increase the shaper by an amount within the probe's capacity of measurement - and schedule a repeat.

A suitable probe might be 100x 1500b packets paced out over a second, bypassing the shaper.  This will occupy just over 1Mbps of bandwidth, and can be expected to induce 10ms of delay if injected into a saturated 100Mbps link.  Observe the delay experienced by each packet *and* the quantity of other traffic that appears between them.  Only if both are favourable can you safely open the shaper, by 1Mbps.

Since wireless links can be expected to change their capacity over time, due to eg. weather and tree growth, this seems to be more generally useful than a static guess.  You could deploy a new link with a conservative "guess" of say 10Mbps, and just probe from there.

 - Jonathan Morton
_______________________________________________
Cake mailing list
<a class="moz-txt-link-abbreviated" href="mailto:Cake@lists.bufferbloat.net">Cake@lists.bufferbloat.net</a>
<a class="moz-txt-link-freetext" href="https://lists.bufferbloat.net/listinfo/cake">https://lists.bufferbloat.net/listinfo/cake</a>
</pre>
    </blockquote>
  </body>
</html>

--------------B4B8411D588B2C083E8FF7E3--

--===============2985598976982647864==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--===============2985598976982647864==--
