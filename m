Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C407CBA7083
	for <lists+cake@lfdr.de>; Sun, 28 Sep 2025 14:38:04 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id C7782701E85;
	Sun, 28 Sep 2025 14:38:03 +0200 (CEST)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759063083;
 b=AxgfEF7p1YkshHAFY+JyXGQaC1MBXIDPs5Ngt52k0OkPr62fHxf7X2/f/uWA8OnVE6pxI
 2WhbnxCKSBTB9003H7tdI5TcQu/bjrLo4drqinX9a8Z6trpKbHzLTpB3vowsgcdae+EbOJX
 4NVGLXQNlQH7hz5duZb5EgEB/MEGywE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759063083; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=R6iuj8/qdyoiZuU/SjihLd4hcUCYnbfmKVHfTGbGijs=;
 b=yEH2xIW32k+t3QYAAUyydxP+wu+cSXli0+v3Om83kP0Xo3Pk3AgSnYGeq0mnmVj0dbKkM
 FyXnPz+I/OHCWnlLOmcKf383w6XkXkUdxvsMF75XfwwpVTOGDsG/2XH7DcXU4ZvHgb//HTJ
 OBhX2zTf9TPUQJ9yei+ovLNK692QkMQ=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=lang.hm;
 dkim=fail;
 arc=none;
 dmarc=none
Received: from mail.lang.hm (wsip-70-167-213-146.ph.ph.cox.net
 [70.167.213.146])
	by mail.toke.dk (Postfix) with ESMTPS id A4FDF701E76
	for <cake@lists.bufferbloat.net>; Sun, 28 Sep 2025 14:38:01 +0200 (CEST)
Received: from asgard.lang.hm (syslog [10.0.0.100])
	by mail.lang.hm (Postfix) with ESMTP id 0D8A120A6FB
	for <cake@lists.bufferbloat.net>; Sun, 28 Sep 2025 05:38:00 -0700 (PDT)
Date: Sun, 28 Sep 2025 05:38:00 -0700 (PDT)
From: David Lang <david@lang.hm>
X-X-Sender: dlang@asgard.lang.hm
To: "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>
In-Reply-To: <2064666241.42029.1759061544846@app.mailbox.org>
Message-ID: <alpine.DEB.2.02.2509280523210.14652@nftneq.ynat.uz>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <2064666241.42029.1759061544846@app.mailbox.org>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Message-ID-Hash: TRIBTQWZ37P3LVLZEYIWWI47SWWS5IDN
X-Message-ID-Hash: TRIBTQWZ37P3LVLZEYIWWI47SWWS5IDN
X-MailFrom: david@lang.hm
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/alpine.DEB.2.02.2509280523210.14652@nftneq.ynat.uz/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

I guess I didn't give enough info on our network architecture.

The upstream ISP is between 500Mb and 1G.

We disconnect the conference center firewall and connect our firewall in it's 
place (Linux system)

This border router connect to the conference center firewall (so their offices 
still get connectivity), and to two routers (Linux, one per building) that are 
also direct connected (a triangle between the three routers. The border router 
is doing NAT for IPv4 and MSS squashing for IPV6 that goes out through a tunnel 
(google doesn't do PMTU discovery on IPv6)

(we are currently debating between deploying OSPF between the three routers, or 
just giving them static routes, high priority direct and low priority for the 
indirect path)

Each building router then connects to one or a few switches in different closets 
that then go to a switch in each room (trunked ports).
We hve a handful of wired users, 120APs for the users, and AV equipment for each 
of the 16 tracks that are recorded and streamed.

a quick look at libreqos and it's pushing for a more complex network layout that 
will be a hard sell at least this year (last year our juniper routers fell over 
under the MSS squashing load for IPv6, so we are going to Linux systems this 
year, getting people to consider cake is hard enough, let alone another 
middleware box)

David Lang

On Sun, 28 Sep 2025, Jaap de Vos wrote:

> Date: Sun, 28 Sep 2025 14:12:24 +0200 (CEST)
> From: Jaap de Vos <m@jaap.pro>
> Reply-To: "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>
> To: David Lang <david@lang.hm>, cake@lists.bufferbloat.net
> Subject: Re: [Cake] help request for cake on a large network
> 
> Hi David,
>
> I haven't tried it myself yet, but this sounds like a use case for which LibreQoS is suitable. However, LibreQoS would fit best if you can build something in line with the design assumptions: https://libreqos.readthedocs.io/en/latest/docs/v2.0/design.html
> Specifically the part about putting it in between other routers and running a routing protocol with those.
>
> There are some good recommendations around suitable hardware and sizing/scaling too: https://libreqos.readthedocs.io/en/latest/docs/v2.0/requirements.html
>
> What kind of upstream bandwidth are you working with at the conference? I run the Mikrotik implementation of CAKE on a campsite. It really helps to get the most out of our asymmetrical gigabit coax line over there, no fiber available yet. So far, we got close to 500 devices on our outdoor Wi-Fi network with mostly good experiences, amazing. Before that, FQ_CoDel on PfSense worked well too, but the network wasn't as busy back then. I'd like to see CAKE on BSD some day.
>
> Kind regards,
> Jaap de Vos
>
>
>> On 09/28/2025 1:06 PM CEST David Lang <david@lang.hm> wrote:
>>
>>
>> I'm starting to prepare for the next Scale conference and we are switching from
>> Juniper routers to Linux routers. This gives me the ability to implement cake.
>>
>> One problem we have is classes that tell everyone 'go download this' that
>> trigger hundreds of people to hammer the network at the same time (this is both
>> a wifi and a network bandwidth issue, wifi is being worked on)
>>
>> The network is pretty flat, a couple of subnets each on ipv4 and ipv6.
>>
>> Any suggestions on how to configure cake for this sort of environment where
>> there are so many devices?
>>
>> David Lang
>> _______________________________________________
>> Cake mailing list -- cake@lists.bufferbloat.net
>> To unsubscribe send an email to cake-leave@lists.bufferbloat.net
>
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
