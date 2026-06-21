.class public final Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public avgBitrate:J

.field public maxBitrate:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->avgBitrate:J

    .line 3
    iput-wide v0, p0, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->maxBitrate:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-wide p1, p0, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->avgBitrate:J

    .line 6
    iput-wide p3, p0, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->maxBitrate:J

    return-void
.end method
