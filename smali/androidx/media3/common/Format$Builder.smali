.class public final Landroidx/media3/common/Format$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public accessibilityChannel:I

.field public auxiliaryTrackType:I

.field public averageBitrate:I

.field public channelCount:I

.field public codecs:Ljava/lang/String;

.field public colorInfo:Landroidx/media3/common/ColorInfo;

.field public containerMimeType:Ljava/lang/String;

.field public cryptoType:I

.field public cueReplacementBehavior:I

.field public drmInitData:Landroidx/media3/common/DrmInitData;

.field public encoderDelay:I

.field public encoderPadding:I

.field public frameRate:F

.field public hasPrerollSamples:Z

.field public height:I

.field public id:Ljava/lang/String;

.field public initializationData:Ljava/util/List;

.field public label:Ljava/lang/String;

.field public labels:Lcom/google/common/collect/ImmutableList;

.field public language:Ljava/lang/String;

.field public maxInputSize:I

.field public maxNumReorderSamples:I

.field public maxSubLayers:I

.field public metadata:Landroidx/media3/common/Metadata;

.field public pcmEncoding:I

.field public peakBitrate:I

.field public pixelWidthHeightRatio:F

.field public projectionData:[B

.field public roleFlags:I

.field public rotationDegrees:I

.field public sampleMimeType:Ljava/lang/String;

.field public sampleRate:I

.field public selectionFlags:I

.field public stereoMode:I

.field public subsampleOffsetUs:J

.field public tileCountHorizontal:I

.field public tileCountVertical:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iput-object v0, p0, Landroidx/media3/common/Format$Builder;->labels:Lcom/google/common/collect/ImmutableList;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxNumReorderSamples:I

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    iput v0, p0, Landroidx/media3/common/Format$Builder;->width:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->height:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/media3/common/Format$Builder;->frameRate:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    iput v0, p0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->maxSubLayers:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    const/4 v1, 0x1

    iput v1, p0, Landroidx/media3/common/Format$Builder;->cueReplacementBehavior:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    iput v0, p0, Landroidx/media3/common/Format$Builder;->auxiliaryTrackType:I

    return-void
.end method


# virtual methods
.method public final build()Landroidx/media3/common/Format;
    .locals 1

    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, p0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-object v0
.end method
