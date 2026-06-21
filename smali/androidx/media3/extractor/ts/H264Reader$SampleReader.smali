.class public final Landroidx/media3/extractor/ts/H264Reader$SampleReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final allowNonIdrKeyframes:Z

.field public final bitArray:Landroidx/media3/extractor/VorbisBitArray;

.field public buffer:[B

.field public bufferLength:I

.field public final detectAccessUnits:Z

.field public isFilling:Z

.field public nalUnitStartPosition:J

.field public nalUnitTimeUs:J

.field public nalUnitType:I

.field public final output:Landroidx/media3/extractor/TrackOutput;

.field public final pps:Landroid/util/SparseArray;

.field public previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field public randomAccessIndicator:Z

.field public readingSample:Z

.field public sampleIsKeyframe:Z

.field public samplePosition:J

.field public sampleTimeUs:J

.field public sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field public final sps:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    iput-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    new-instance p1, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    new-instance p1, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    new-instance p2, Landroidx/media3/extractor/VorbisBitArray;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p1}, Landroidx/media3/extractor/VorbisBitArray;-><init>(II[B)V

    iput-object p2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/extractor/VorbisBitArray;

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->hasSliceType:Z

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isComplete:Z

    return-void
.end method
