.class public final Landroidx/media3/extractor/wav/WavFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;


# instance fields
.field public bitsPerSample:I

.field public blockSize:I

.field public final extraData:Ljava/lang/Object;

.field public final frameRateHz:I

.field public final numChannels:I


# direct methods
.method public constructor <init>(IIIII[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    .line 3
    iput p3, p0, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    .line 4
    iput p4, p0, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    .line 5
    iput p5, p0, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    .line 6
    iput-object p6, p0, Landroidx/media3/extractor/wav/WavFormat;->extraData:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/container/Mp4Box$LeafBox;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget-object p1, p1, Landroidx/media3/container/Mp4Box$LeafBox;->data:Landroidx/media3/common/util/ParsableByteArray;

    iput-object p1, p0, Landroidx/media3/extractor/wav/WavFormat;->extraData:Ljava/lang/Object;

    const/16 v0, 0xc

    .line 9
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 10
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    .line 11
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    return-void
.end method


# virtual methods
.method public getFixedSampleSize()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSampleCount()I
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/wav/WavFormat;->numChannels:I

    return p0
.end method

.method public readNextSampleSize()I
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/wav/WavFormat;->extraData:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x8

    iget v2, p0, Landroidx/media3/extractor/wav/WavFormat;->frameRateHz:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    return p0

    :cond_0
    const/16 v1, 0x10

    if-ne v2, v1, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    return p0

    :cond_1
    iget v1, p0, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/media3/extractor/wav/WavFormat;->blockSize:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    and-int/lit16 p0, v0, 0xf0

    shr-int/lit8 p0, p0, 0x4

    return p0

    :cond_2
    iget p0, p0, Landroidx/media3/extractor/wav/WavFormat;->bitsPerSample:I

    and-int/lit8 p0, p0, 0xf

    return p0
.end method
