.class public final Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

.field public static final DEFAULT$1:Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->DEFAULT$1:Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->DEFAULT:Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;

    return-void
.end method

.method public static getAudioTrackAttributesV21(Landroidx/media3/common/AudioAttributes;Z)Landroid/media/AudioAttributes;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/room/ObservedTableVersions;

    move-result-object p0

    iget-object p0, p0, Landroidx/room/ObservedTableVersions;->versions:Ljava/lang/Object;

    check-cast p0, Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public static getMaximumEncodedRateBytesPerSecond(I)I
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    const p0, 0x52080

    return p0

    :pswitch_1
    const p0, 0x3e800

    return p0

    :pswitch_2
    const/16 p0, 0x1f40

    return p0

    :pswitch_3
    const p0, 0x2ebae4

    return p0

    :pswitch_4
    const/16 p0, 0x1b58

    return p0

    :pswitch_5
    const/16 p0, 0x3e80

    return p0

    :pswitch_6
    const p0, 0x186a0

    return p0

    :pswitch_7
    const p0, 0x9c40

    return p0

    :pswitch_8
    const p0, 0x2ee00

    return p0

    :pswitch_9
    const p0, 0xbb800

    return p0

    :pswitch_a
    const p0, 0x13880

    return p0

    :cond_0
    :pswitch_b
    const p0, 0x225510

    return p0

    :cond_1
    const p0, 0xf906

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getAudioTrack(Landroidx/media3/extractor/Ac4Util$Ac4Presentation;Landroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 6

    iget-boolean p0, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->isChannelCoded:Z

    iget v0, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->channelMode:I

    iget v1, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->topChannelPairs:I

    iget v2, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->numOfUmxObjects:I

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_1

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Util;->getAudioFormat(III)Landroid/media/AudioFormat;

    move-result-object v0

    invoke-static {p2, p0}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->getAudioTrackAttributesV21(Landroidx/media3/common/AudioAttributes;Z)Landroid/media/AudioAttributes;

    move-result-object p0

    new-instance p2, Landroid/media/AudioTrack$Builder;

    invoke-direct {p2}, Landroid/media/AudioTrack$Builder;-><init>()V

    invoke-virtual {p2, p0}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    iget p2, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    invoke-virtual {p0, p2}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    const/16 p2, 0x1d

    if-lt v3, p2, :cond_0

    iget-boolean p1, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->hasBackChannels:Z

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$Builder;->setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0

    :cond_1
    move v3, v0

    new-instance v0, Landroid/media/AudioTrack;

    invoke-static {p2, p0}, Landroidx/media3/exoplayer/audio/DefaultAudioTrackProvider;->getAudioTrackAttributesV21(Landroidx/media3/common/AudioAttributes;Z)Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-static {v2, v1, v3}, Landroidx/media3/common/util/Util;->getAudioFormat(III)Landroid/media/AudioFormat;

    move-result-object v2

    iget v3, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->level:I

    const/4 v4, 0x1

    move-object v1, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method
