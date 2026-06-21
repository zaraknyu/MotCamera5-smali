.class public final Landroidx/media3/extractor/AacUtil$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final sampleRateHz:I


# direct methods
.method public constructor <init>(IIIJLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p6, p0, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 4
    iput p1, p0, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    .line 5
    iput p2, p0, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    iput p2, p0, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    iput-object p3, p0, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
