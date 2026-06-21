.class public final Landroidx/media3/extractor/ts/H265Reader$SampleReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isFirstPrefixNalUnit:Z

.field public isFirstSlice:Z

.field public lookingForFirstSliceFlag:Z

.field public nalUnitBytesRead:I

.field public nalUnitHasKeyframeData:Z

.field public nalUnitPosition:J

.field public nalUnitTimeUs:J

.field public final output:Landroidx/media3/extractor/TrackOutput;

.field public readingPrefix:Z

.field public readingSample:Z

.field public sampleIsKeyframe:Z

.field public samplePosition:J

.field public sampleTimeUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public final outputSample(I)V
    .locals 9

    iget-wide v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->nalUnitPosition:J

    iget-wide v5, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->samplePosition:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v7, v3

    iget-boolean v3, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->sampleIsKeyframe:Z

    sub-long v4, v7, v5

    long-to-int v4, v4

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_1
    :goto_0
    return-void
.end method
