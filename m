Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from lists.bufferbloat.net (lists.bufferbloat.net [IPv6:2600:3c03:e000:3ca:f00f:f00f:b33b:b33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA3C322955
	for <lists+cake@lfdr.de>; Tue, 23 Feb 2021 12:15:25 +0100 (CET)
Received: from pitt.bufferbloat.net (localhost [127.0.0.1])
	by lists.bufferbloat.net (Postfix) with ESMTP id DCA343CB38;
	Tue, 23 Feb 2021 06:15:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=201610; t=1614078923;
	bh=99FCvz7er9cSmQDW5ox8wIBJsHoFfDoR0UbpuLQRd2Y=;
	h=To:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HT5vpGDzVhD6JY6nlcjIdoFHA4FecQljhFEFMEeAfYmGrK/wTHezIwWmxxFGwSHVh
	 TGxpuHphHfl+0LaN54KnDgmlFbVJcE6kSjyrS5ypuAxxU4KMvFaa8AvtaisdkisICF
	 6YKEZ+fpMqBbXgEs+cK0w9oVB8ug8XGwUcpDeI2Y8F4PxJevXubNVPRFsvPjAohFr0
	 hWhzd5AYjWDV+Dq2BfQI4g93n5fY2gCcHTnI0jG9jCNaYYFoSeDQdySqRUrAl6NAiI
	 ZFvXWi9MRpcYvER9mSEZ0j25jnpBXzXZw6Rr8w0la9beAKK4zFVh88d+ljMD1tHq4L
	 N4DEQ1hTzE5pA==
X-Original-To: cake@lists.bufferbloat.net
Delivered-To: cake@lists.bufferbloat.net
Received: from mail33c50.megamailservers.eu (mail33c50.megamailservers.eu
 [91.136.10.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by lists.bufferbloat.net (Postfix) with ESMTPS id 34DD83B2A4
 for <cake@lists.bufferbloat.net>; Tue, 23 Feb 2021 06:15:22 -0500 (EST)
X-Authenticated-User: sagermail@sager.me.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megamailservers.eu;
 s=maildub; t=1614078920;
 bh=T7S+jvD8men7X8cjuOkfotdcX6IQbh+rTwWCtgAa/7E=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=V7J5JJ6Q2TcoplAvlNQYzoEdqhK/4I/eXkwamZINRrD64SmYuJiy5R/57HXmGzCgv
 hPsiaU66hyjS2wvqaOJqokFw3JXUxhVS+MUKXEjAuMlQWlSVR8rz/KbTWXiKWMMmOn
 jZhfrqPipba0LyzoknucWaGO6IwdXzeIyAZKdig4=
Feedback-ID: john@sager.me.u
Received: from mainserver.wc (97.83.2.81.in-addr.arpa [81.2.83.97])
 (authenticated bits=0)
 by mail33c50.megamailservers.eu (8.14.9/8.13.1) with ESMTP id 11NBFIex003532
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <cake@lists.bufferbloat.net>; Tue, 23 Feb 2021 11:15:20 +0000
Received: from
 1.4.7.2.4.7.8.0.a.e.2.c.c.0.5.d.0.0.0.0.3.e.b.c.0.b.8.0.1.0.0.2.ip6.arpa
 ([2001:8b0:cbe3:0:d50c:c2ea:874:2741])
 by mainserver.wc with esmtp (Exim 4.93)
 (envelope-from <john@sager.me.uk>) id 1lEVew-000xFH-47
 for cake@lists.bufferbloat.net; Tue, 23 Feb 2021 11:15:18 +0000
To: cake@lists.bufferbloat.net
References: <CANmPAYHxP9mdmPMsvR=bi=TSNi9+0HbZGz0r89zOLbe3dAyk-Q@mail.gmail.com>
 <87mtw1kx9c.fsf@toke.dk>
 <CANmPAYHFrtbLhGZ1yXNzsaGGf8gP09ap_vUCMX9ggbSRUcpRFg@mail.gmail.com>
 <87im6pkweq.fsf@toke.dk> <9a889d98-0fae-d1af-6dea-c534f0df854a@sager.me.uk>
 <CANmPAYF7SEwWUOpj7S3riHufHDm2QtqSjWq8F-+rGJnRk=3xZw@mail.gmail.com>
 <faa1600e-d040-2741-9335-fdf17e32f11b@sager.me.uk>
From: John Sager <john@sager.me.uk>
Message-ID: <f954af51-8a96-d4de-d9ac-f3c78174cd39@sager.me.uk>
Date: Tue, 23 Feb 2021 11:15:16 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <faa1600e-d040-2741-9335-fdf17e32f11b@sager.me.uk>
Content-Type: multipart/mixed; boundary="------------0E946134A326F176E0215E5E"
Content-Language: en-GB
X-CTCH-RefID: str=0001.0A742F26.6034E3C8.003F:SCFSTAT79219218, ss=1, re=-4.000,
 recu=0.000, reip=0.000, cl=1, cld=1, fgs=0
X-CTCH-VOD: Unknown
X-CTCH-Spam: Unknown
X-CTCH-Score: -4.000
X-CTCH-Rules: 
X-CTCH-Flags: 0
X-CTCH-ScoreCust: 0.000
X-CSC: 0
X-CHA: v=2.3 cv=euahMbhX c=1 sm=1 tr=0 a=dws6IJh5fU+Ftmrx3Eq8JA==:117
 a=dws6IJh5fU+Ftmrx3Eq8JA==:17 a=xqWC_Br6kY4A:10 a=qa6Q16uM49sA:10
 a=r77TgQKjGQsHNAKrUKIA:9 a=GQ3UrkdYAAAA:8 a=pGLkceISAAAA:8 a=kurRqvosAAAA:8
 a=22z_AUu0F8-Id6LQCHEA:9 a=QEXdDO2ut3YA:10 a=nh3HOa8j5KijVL_KaL0A:9
 a=IKIoO-ieCDEA:10 a=wDOl-8IaFK0A:10 a=Yy2xoct6d_2ZlxTvqP-Z:22
 a=UrkXBYOGhgNlFfmH13Sb:22 a=kbxRQ_lfPIoQnHsAj2-A:22
X-Origin-Country: GB
Subject: Re: [Cake] Enforcing video quality question
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
Errors-To: cake-bounces@lists.bufferbloat.net
Sender: "Cake" <cake-bounces@lists.bufferbloat.net>

This is a multi-part message in MIME format.
--------------0E946134A326F176E0215E5E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Here is the toy QoS solution for linux, which is a simplified version of the 
one I uses successfully on my home network. It uses quite a few scheduler 
modules - sch_htb, act_connmark, em_meta etc - that may not load 
automatically, so they may need to be listed in /etc/modules.

Toke, thanks for agreeing to let the attachment through.

John

On 19/02/2021 19:04, John Sager wrote:
> Yes. The marks are set on egress so you can select on inside IP address, 
> port, protocol - in fact many characteristics that iptables rules can test 
> for. I'll put together a toy iptables rules file and a toy script with the 
> necessary tc commands. It'll take me a few days though as I'm busy with 
> other stuff currently.
> 
> PS does the cake list allow attachments? It will be a small zip file.
> 
> John
> 
> On 19/02/2021 15:02, Peter Lepeska wrote:
>> Hi John
>>
>> Does this result in the ability to set per internal host max ingress 
>> bandwidth? If so, any chance you can share a snippet of a script? I will 
>> be trying to reproduce your setup.
>>
>> Thank you!
>>
>> Peter
>>
>> On Fri, Feb 19, 2021 at 7:16 AM John Sager <john@sager.me.uk 
>> <mailto:john@sager.me.uk>> wrote:
>>
>>     That's basically what I do. I set marks on outgoing traffic in the mangle
>>     table which are copied to connmark before egress. Then on ingress the
>>     connmark is restored to the packet and punted to ifb0 using 'action
>>     connmark
>>     action mirred egress redirect dev $IFB' as an ingress filter on the
>>     incoming
>>     interface (ppp0 in my case). Then I have HTB classes on ifb0 which set 
>> rate
>>     limits for different traffic classes indicated by the marks. I have 
>> only 6
>>     traffic classes (I bundle all video into one class), but as marks are 32
>>     bits wide there is lots of scope for classes for individual IP addresses.
>>
>>     John
>>
>>     On 18/02/2021 19:28, Toke Høiland-Jørgensen via Cake wrote:
>>      > Peter Lepeska <bizzbyster@gmail.com <mailto:bizzbyster@gmail.com>>
>>     writes:
>>      >
>>      >> A user on the OpenWrt forum suggested hashlimit rules supported by
>>      >> iptables. How does that idea sound to you?
>>      >
>>      > That will result in a cliff-edge policer (i.e., as soon as a device 
>> goes
>>      > over its limits it will see every packet get dropped). This doesn't
>>      > interact too well with the burstiness of TCP, so you'll likely get
>>      > erratic behaviour of the traffic if you do that. Doing the same thing
>>      > with HTB means the router will queue+shape each class (and with 
>> FQ-CoDel
>>      > on the leaves, you'll get a nice AQM behaviour as well), so that 
>> will be
>>      > smoother and less prone to bloat :)
>>      >
>>      > -Toke
>>      > _______________________________________________
>>      > Cake mailing list
>>      > Cake@lists.bufferbloat.net <mailto:Cake@lists.bufferbloat.net>
>>      > https://lists.bufferbloat.net/listinfo/cake
>>      >
>>     _______________________________________________
>>     Cake mailing list
>>     Cake@lists.bufferbloat.net <mailto:Cake@lists.bufferbloat.net>
>>     https://lists.bufferbloat.net/listinfo/cake
>>
> _______________________________________________
> Cake mailing list
> Cake@lists.bufferbloat.net
> https://lists.bufferbloat.net/listinfo/cake
> 

--------------0E946134A326F176E0215E5E
Content-Type: application/zip;
 name="linux_toy_qos.zip"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="linux_toy_qos.zip"

UEsDBBQAAgAIAGZOV1KrgVJNTAMAAB4IAAAMABwAaXB0YWJsZXNfcW9zVVQJAAMQ0DRgat00
YHV4CwABBOgDAAAE6AMAAJ1Va2/TMBT93l9xUSXYUNKl3YQg0j5UXYEJ9UGSaQLEByex26yJ
HWxnXfn1XDt9Zx3SpCgPxz4+99x7rtug55kCvB4qpfGDQkH4LKegSYx3WeVUARMSh+Ui4zMo
SbKgGpfwRBRmQHCzrNXGEU0lJzlwqpdCLuoBRhIKZ0SpqqApaAExBarn3rkDhKdmKa6XhCtG
pUQ8BKpZyIUy081HIjg3A4i4/cY1yQIkTYRMLUHzA7cRSUZ0JnjrfR1Iy58Gw2ByF92Ov0B/
MBhOI/jl+d7vln87nt5FR2OfJ8F9P7g5GsXlzanTSRg9C9yG7yKspcP3kYnEh7lQuuvDlWPf
ej5c1m+XPvQcSCkjVa596OKKgiwoqEpiPHm+E3qjPJOiaIo9J48UyoW2ysH1NXhwZnNbkJXR
XNK04inh+rzl9mFPEzez+QD3AUb94Bu4rqLatSjek+dd4I0hqVsGBLjg7l8qxTYjDuIqLZAq
pmq7+1ugT5k+tU+xy+cb3O1wJ0NjMBmP11TW6PUkM1fZuezV2MEwugvGGI/Rfp2jE1gKup96
ne6Hj52u1+me0Ofq4iU6BxC9ExCXG4ltutRcLPFOc5pok/V4hZomQNIUtVAgCda5KXbC4Xa6
HTYGsNV0WhiDYhRJXCUqiaZknh/HfpL4aepT6jN2gl/v4mXFj9RuSr0u7v8gNNY/Q6W7kWrf
e8mcYF+g2BEya7gkJ0UJOimhQGVcLFqNpftHKCOwUbTSUCnKqhxQSmpp7cG5WMhlibxqDKRn
Hy7eXZaTmYLwx9gJwsg8Dc9oMB2FIc6wG7u4qauFWxa6AmtmpC5M0paZolDZ4sROiGZR2K82
4iBPIbNZxonGn9biUlTocSiliLEXr07yfI1+m467biq7dttorTFlxt7reTOBxwHyeoHM1oAN
Qnu+VtitmqZuQ2QsYFxpWh8awQFFVs6uB4bhV8MSi3/bAK2R63NlLS3yRvIaJbNtayUqSAV/
p+seucXCMBnLEqc+g3Jqf2oTXQf6oLIiy4m0ZBBnKao8rUk1ECwjWNIYbSsfUVQ8EgncjH4e
0EIQGxiOrc+yw5gOA9pvPd4zatfWSQ/nGfmVxgoyCtvneHjfKOS0FFJDr3eckmad/ANQSwME
FAACAAgArVhXUpI0Z6F0BwAAixgAAAwAHAB0Y3NjcmlwdF9xb3NVVAkAA3bhNGCR4TRgdXgL
AAEE6AMAAAToAwAAzVhtb9u2Fv6uX8HrGHcJsNiWvbbbgBSwU2d11zRZkq1fLlDQEmXxRhIV
kopjDP3vO+eQlO28tEmHbvUXkxR5znNeH0o7/+nPZdU3ebQT7bAxq8SS8YrJstbqWqTsN3XO
TKJlbVmmNCtXLFelYFo1VugeHLnIpWHXQhup4JhhnFm1YqoS8M9kUTTGam5hlgtWa1klsi4E
HrR40IteKGGYrFhf2KRf13Vf1vtN3UtJJ52s6wFsAJ0ZT+i4tKzkK8ALIEuVymwlqwXqXKhW
UiXsUunLvsycNHiqqmLFdFPBgDAI9n78bi2ZvPBG5RU75wuh2ZGY64brFRsOhjE9DCabnNcA
eq5szsRCCwOmVylIcmMwOstk0oPNIkzQPTXXVlrwlUjRiAogGQHu4wVLCm6MMO6I4eBlv8K4
FqwxwrnjlkaSQrPvCQDuLWR1CbttDmFa5CxRVSUSVIpIkkt0VMn1pemRRdMtxLdAOogBSJBY
gxRhnRDG67qQZM615CyTWix5UYCTi2CM3wfI/F6MEPr+9Gx6dvL7xezdLyzJOSyqzEel5NWi
AM/xOWTLLSHwnCypTCa0FhRX63eAflGkazn32a5FovQaw8n5xW0QGxBQzhrEtuEBC8VmvmI2
AfUFpJJBSGjrigrIKpAithODXD/bzhZXB8HJ3Atj3Fqe5Gs7XcbWjd3MW7bra8QVVsKN2IMh
t+CCWpJY8WAmeMkgZcNA70pMKrISPA2xTawT5TaagKlFwmQ2H/TusQ0LBvVJ48Sl2CN4gqHw
lWtvOdj56L2W1sJ+8C8V5qEvzWOOVRk/d7uOsQVgZr05PGdvoIPBoxdsHyNaLQTLli6HcY9G
XaLkNsnZd6Ww/Ds4v/GUOwO3j8y5zgzDFldfP29tWkqoxdI2B/GzwQBwRBeHB93dZS5BtE32
IhB8enr6YXY0Ppy6wjIhVVxTYykXpap67NDjhAKH+gaFGGRVY6hMROcPuq0olNvU1FZL6K9s
Dv0CnFaQu0EQSYcmAH0a94A6yCVo7LXQiahs9Pvp2fhietCJfwLY8OuAvFQtK9qNve0TwtB3
lWlc6rPXFxN2lUqTsBzcBulltSow+m/bAyBP9BbsxU+9Z8dzaftGQC4otgTMFkL4f2dAoZbR
q5P37xywF88DMDQV/KQEKQBK0rngKfuxx07ITdQGaqUhE5fANgyyAJpCdPLH9Oz1dPzqoPNj
B0W4gt137nKhd0sSI0oFboB0nrvRVvdxjSw6/vV4fP7rQWdwM8g6MHsNbSOm6Q9hOqTpKExH
NB2Sc0XGm8LCg1fTI1qOcRnJFhhRlVAA8Ozd9D09Q7N3gCsVZD5ULmzEfporA0bm/Np5ngjC
b1pFp2eoESLagSHpGOKIJI7IA5m8wcyDal7KFLIWRKqEU3712DilMGANcmNFFE3PLpzAEIdZ
WIgHfgW2kKJng/WWOwsEIPahhCoTEjJpYVxzNhhUaMSFLIHNBfQ4MpLNobMhvCUZ6n3nihEh
1oJfQvpjlt3FffiWYHb/9BZ8xCWE1f3TZf3HKJq1m2Zh0yxsCjlIS4ieNsHgI+K/anhlm5LK
FNbAcRAYBEk16xgh4UXSFJD5nhKi2W/eDc98Qgc23c3FDU9FIkte7EWHb8c+p2LIKD+DlIpH
7QwyKh7SjBwdxzT2PiYHn0PlXjWigYoV1QLCjEhdz5A13QuouLuuI9kb2gtb2WhI8SkEFLy4
kcZiT8aesE8E0NR0lkodLhq5TAUD7lXaRN2LQ98CUgH1J66DdK2UZfAbvmR9WO5XDThrY/zw
yXCJevBktLPT3ltgSJbX4Mhs5a1HqbKmrrWP9NxmkR5esd14sLehnKfpHdjQ91Io/fjnAcvt
vD3dda4PnqatFE0S5zL0lji4S0HLJUmOTlIYxySV2mPXpSWVRjv5X8SQVhimzLrpdUNXC/pN
Mw9Xs0cAiDcAdEO2bQDxFeORhBm2GNZ1/eULlQz/CSWjr60E4r6tAhe8BuoerQKfIWMQDPWU
UUpSObVJaaKH868FsI5RdvUhUVAjTzg0/JJDo6ceQqvbI2Dykbuw+rshCQl32AerYjMsMFFW
JaogxptzA3csx9ZYER28rO1W2Qe6nZbcXLKuo2UmrnBI3trrsAy4YzvN/xUow/ugDP8VKKP7
oIyeBsWl+N9BAhJu43C1srN+XaB2PjuaHOB7ROAkTVTkXjSy+cbLRvtyYZssu59QJq5Nv1wz
yfDlZzho0jLQ/YcAFbJogIPUeJteJ0CZd/kVH8I6fTvQ7nVi05z7q27yWUqCG8BjKWnyeUIK
VyDf3ML00aQzeTzlzLYatb+XPaJRTx5POF9Jxejrqtgmm9km2czuks1TpUO+bEvHhVY6ToJ0
HIdLb9ddZL+Q2iZPJ7bJ02lt8nRSm3yC0h5zAF205kB8q4MXF99UVXXno8YDPXfyrVDi5Fsh
xMm3QoeTf5gMSXcgIMq+h29jnhQy+P0czgSiqS/DdzytSvr0R7P/wkP8Toxvrp498Uv9HR76
5L3AKbzHAWA6dx8YW4V+Xkr6Vus/g4aPia2To+gvUEsDBBQAAgAIAOFVV1K6q9NpCgUAAEEK
AAAGABwAUkVBRE1FVVQJAAMl3TRgat00YHV4CwABBOgDAAAE6AMAAHVWXW/cNhB816/YAgUu
AeJzmgJ5T4oYcZsGTe2g6FPAo1YnxhQp8+M++uszu9TZ5wR9uhPFXc7Ozg51OzINznMmNxez
wZ8v9zGTCT0Vm23Cqi64afY8cShkqMQjfYo3lO2IpS4GrH1woR4oxVo4Uc0ubKkg9fvbt5rr
6tOX32LPXmP66jnlddc9OdLhVMpcKA6UqiAaYtIkq8mErecV6W4cT5NJd+SCjRMO6mZj77hg
f4qTBrgAFMF4Clz2EVsRsmHA4p68EYSSWktQNII2Dt0mlpF4mzg3ArCs/0syw+Dsmq4XvNg8
oALaux7sGeu8K24BLNDOQW2OZLwnrPUSR6AUAJxZ0+3ISqWZZ++sKQ5EAmKmrzUXrePPN3//
0RWTtlxe0Ka2xfeySm0Vpx2XyobqAZgsp2Lk1yDTCy2Ddxy6j1efPr/7/E6YmCu6eIKHZyPh
KWOFaWQ/g545xW0yEypG8Q6sldGgMcFyh4CSjhI3RO/jnm4/3IDnbSyulYA3fABltigYN0ht
0hOwM7UtJneGrK/aS6mp51xcaC+f8Xq7pn9jva0bft7qdoX2JodVocRg80i5WovWoOh1Jzy2
cpR89C6JpoNuBJCQ0awkRbTDbAxhEdDDs+C96xLbmHrpjFM96lv0CxVAuYXnxoORuvP38mgi
66w3OaNo7hv7xud4ijCB2CSBP8ZULiwqi1UFLyctylHxd3aULl6AcylChzTlU9skwihutsrZ
aLSTQLJDJ1kDJA1pGkyacHSatmW6hKWlUeBGZ8cgUegvLAqSNd3HpRV9LSrpkkFqmUqUEgOf
oAMc70XmOfoqiDKkg/FMc0TEYgaZl5MxnrETLg4u68vzCXgm3LRkXOxzacPK8wDWG38HTtYh
1WIO6JnpOa1+ohs3OW/ScsY26jEo+vVStRvoGKtUQdd/7V6rrvYOEy9ZxghyM3vwGTHYoC1s
wQCApThjWgv7I2h8YonbqLXQJXBezvN86eaLOq97hYbnlwJZ2PnnzcdmSbAKfkExdRqymNOl
Gx7DotL7JECp1DywLvEuGW1MRBeY+7xY2xR71Zw8qmRSDbQfOfwIALqZABxHiixE5fAgPhgx
+Eebz2rdKubF2H4lIQmeMvsqVt3zYKovbU/3CH4Zh0X9tAq8X7VNmqYGaMRZJwI7OfiDwzZA
2Fuk7xnOlUA8ebQW+9f07mB5Lj/keTzS++4h6cni9g5aMl6EcoTAdyw6gurd7mz2qc1+U4Tp
QgwX/3GKD2ZxZgo/OsqZ+4jfr4xOZXeKXZFekcXKTSsdRB+N3IOn+O8Eopfv0rvlHpGDxbdb
jBs2L88OoskpmuXqwl+MI+y35x39fH31diVXtJyTzcQLhsUTgAls4X7ts969dX7Sd8T936Wo
RLVcuVOHqIvxPPFioO3Zyj3pRJDOjosW5CLyIsfHkGblMbmtmDfdV8ZFs0C35g4DAL9AB0VW
ie8rqtQvEqQaDXqnMmmmIDeOnGBwAdkqtqDibddWwqnwYzTivhpc3UfaAWAkMepMIUrGjg+j
kXt4iqGM7SJRl9dD8iKH89HpxQ6UCKVmJRhWQlm3suzkG2OFST19GGkrdgZ3YPsQ2JnkIuYK
iPFGSD2J46xFnXi22mxr1YZRDI86aOifWpNmao6nH0p3wjCgssnHk7I6xCN8QjBKzw67oYff
4xjoxmzByxVvUjVg/9XLV790X+UF6sr6rgc/E+tPveu6b1BLAQIeAxQAAgAIAGZOV1KrgVJN
TAMAAB4IAAAMABgAAAAAAAEAAAC0gQAAAABpcHRhYmxlc19xb3NVVAUAAxDQNGB1eAsAAQTo
AwAABOgDAABQSwECHgMUAAIACACtWFdSkjRnoXQHAACLGAAADAAYAAAAAAABAAAA7YGSAwAA
dGNzY3JpcHRfcW9zVVQFAAN24TRgdXgLAAEE6AMAAAToAwAAUEsBAh4DFAACAAgA4VVXUrqr
02kKBQAAQQoAAAYAGAAAAAAAAQAAALSBTAsAAFJFQURNRVVUBQADJd00YHV4CwABBOgDAAAE
6AMAAFBLBQYAAAAAAwADAPAAAACWEAAAAAA=
--------------0E946134A326F176E0215E5E
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWls
aW5nIGxpc3QKQ2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKaHR0cHM6Ly9saXN0cy5idWZmZXJi
bG9hdC5uZXQvbGlzdGluZm8vY2FrZQo=

--------------0E946134A326F176E0215E5E--
