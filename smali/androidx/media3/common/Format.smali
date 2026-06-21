.class public final Landroidx/media3/common/Format;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final accessibilityChannel:I

.field public final auxiliaryTrackType:I

.field public final averageBitrate:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Landroidx/media3/common/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final cryptoType:I

.field public final cueReplacementBehavior:I

.field public final drmInitData:Landroidx/media3/common/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameRate:F

.field public final hasPrerollSamples:Z

.field public hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;

.field public final label:Ljava/lang/String;

.field public final labels:Lcom/google/common/collect/ImmutableList;

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final maxNumReorderSamples:I

.field public final maxSubLayers:I

.field public final metadata:Landroidx/media3/common/Metadata;

.field public final pcmEncoding:I

.field public final peakBitrate:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final roleFlags:I

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final tileCountHorizontal:I

.field public final tileCountVertical:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/16 v0, 0x8

    const/16 v1, 0x9

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0xd

    const/16 v1, 0xe

    const/16 v2, 0xa

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0x12

    const/16 v1, 0x13

    const/16 v2, 0xf

    const/16 v3, 0x10

    const/16 v4, 0x11

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0x17

    const/16 v1, 0x18

    const/16 v2, 0x14

    const/16 v3, 0x15

    const/16 v4, 0x16

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0x1c

    const/16 v1, 0x1d

    const/16 v2, 0x19

    const/16 v3, 0x1a

    const/16 v4, 0x1b

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0x21

    const/16 v1, 0x22

    const/16 v2, 0x1e

    const/16 v3, 0x1f

    const/16 v4, 0x20

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Format$Builder;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->labels:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/media3/common/Label;

    iget-object v4, p1, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    invoke-direct {v1, v0, v4}, Landroidx/media3/common/Label;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->labels:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    goto/16 :goto_4

    :cond_0
    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->labels:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->labels:Lcom/google/common/collect/ImmutableList;

    iput-object v1, p0, Landroidx/media3/common/Format;->labels:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Label;

    iget-object v6, v5, Landroidx/media3/common/Label;->language:Ljava/lang/String;

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, v5, Landroidx/media3/common/Label;->value:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Label;

    iget-object v0, v0, Landroidx/media3/common/Label;->value:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    goto :goto_4

    :cond_3
    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->labels:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    if-nez v0, :cond_4

    :goto_1
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v3

    :goto_2
    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->labels:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->labels:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Label;

    iget-object v1, v1, Landroidx/media3/common/Label;->value:Ljava/lang/String;

    iget-object v4, p1, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_3
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkState(Z)V

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->labels:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/Format;->labels:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    :goto_4
    iget v0, p1, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    iput v0, p0, Landroidx/media3/common/Format;->selectionFlags:I

    iget v0, p1, Landroidx/media3/common/Format$Builder;->auxiliaryTrackType:I

    if-eqz v0, :cond_8

    iget v0, p1, Landroidx/media3/common/Format$Builder;->roleFlags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v0, v3

    goto :goto_6

    :cond_8
    :goto_5
    move v0, v2

    :goto_6
    const-string v1, "Auxiliary track type must only be set to a value other than AUXILIARY_TRACK_TYPE_UNDEFINED only when ROLE_FLAG_AUXILIARY is set"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->checkState(Ljava/lang/String;Z)V

    iget v0, p1, Landroidx/media3/common/Format$Builder;->roleFlags:I

    iput v0, p0, Landroidx/media3/common/Format;->roleFlags:I

    iget v0, p1, Landroidx/media3/common/Format$Builder;->auxiliaryTrackType:I

    iput v0, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    iget v0, p1, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iput v0, p0, Landroidx/media3/common/Format;->averageBitrate:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    iput v1, p0, Landroidx/media3/common/Format;->peakBitrate:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_9

    move v0, v1

    :cond_9
    iput v0, p0, Landroidx/media3/common/Format;->bitrate:I

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    iput-object v0, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget v0, p1, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    iput v0, p0, Landroidx/media3/common/Format;->maxInputSize:I

    iget v0, p1, Landroidx/media3/common/Format$Builder;->maxNumReorderSamples:I

    iput v0, p0, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    if-nez v0, :cond_a

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_a
    iput-object v0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    iget-object v0, p1, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v0, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-wide v5, p1, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    iput-wide v5, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iget-boolean v1, p1, Landroidx/media3/common/Format$Builder;->hasPrerollSamples:Z

    iput-boolean v1, p0, Landroidx/media3/common/Format;->hasPrerollSamples:Z

    iget v1, p1, Landroidx/media3/common/Format$Builder;->width:I

    iput v1, p0, Landroidx/media3/common/Format;->width:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->height:I

    iput v1, p0, Landroidx/media3/common/Format;->height:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->frameRate:F

    iput v1, p0, Landroidx/media3/common/Format;->frameRate:F

    iget v1, p1, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    if-ne v1, v4, :cond_b

    move v1, v3

    :cond_b
    iput v1, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v1, v5

    if-nez v5, :cond_c

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_c
    iput v1, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->projectionData:[B

    iput-object v1, p0, Landroidx/media3/common/Format;->projectionData:[B

    iget v1, p1, Landroidx/media3/common/Format$Builder;->stereoMode:I

    iput v1, p0, Landroidx/media3/common/Format;->stereoMode:I

    iget-object v1, p1, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    iput-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget v1, p1, Landroidx/media3/common/Format$Builder;->maxSubLayers:I

    iput v1, p0, Landroidx/media3/common/Format;->maxSubLayers:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->channelCount:I

    iput v1, p0, Landroidx/media3/common/Format;->channelCount:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iput v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    iput v1, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    if-ne v1, v4, :cond_d

    move v1, v3

    :cond_d
    iput v1, p0, Landroidx/media3/common/Format;->encoderDelay:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    if-ne v1, v4, :cond_e

    goto :goto_7

    :cond_e
    move v3, v1

    :goto_7
    iput v3, p0, Landroidx/media3/common/Format;->encoderPadding:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    iput v1, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->cueReplacementBehavior:I

    iput v1, p0, Landroidx/media3/common/Format;->cueReplacementBehavior:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    iput v1, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iget v1, p1, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    iput v1, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    iget p1, p1, Landroidx/media3/common/Format$Builder;->cryptoType:I

    if-nez p1, :cond_f

    if-eqz v0, :cond_f

    iput v2, p0, Landroidx/media3/common/Format;->cryptoType:I

    return-void

    :cond_f
    iput p1, p0, Landroidx/media3/common/Format;->cryptoType:I

    return-void
.end method

.method public static toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    :cond_0
    iget v1, v0, Landroidx/media3/common/Format;->selectionFlags:I

    iget-object v2, v0, Landroidx/media3/common/Format;->labels:Lcom/google/common/collect/ImmutableList;

    iget-object v3, v0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iget v4, v0, Landroidx/media3/common/Format;->sampleRate:I

    iget v5, v0, Landroidx/media3/common/Format;->channelCount:I

    iget v6, v0, Landroidx/media3/common/Format;->maxSubLayers:I

    iget v7, v0, Landroidx/media3/common/Format;->frameRate:F

    iget-object v8, v0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget v9, v0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    iget v10, v0, Landroidx/media3/common/Format;->height:I

    iget v11, v0, Landroidx/media3/common/Format;->width:I

    iget-object v12, v0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v13, v0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iget v14, v0, Landroidx/media3/common/Format;->bitrate:I

    iget-object v15, v0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    move/from16 v16, v1

    iget v1, v0, Landroidx/media3/common/Format;->roleFlags:I

    move/from16 v17, v1

    new-instance v1, Lcom/google/common/base/Joiner;

    const/16 v18, 0x2c

    move-object/from16 v19, v2

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v3

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;I)V

    const-string v2, "id="

    invoke-static {v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mimeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_1

    const-string v3, ", container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v3, -0x1

    if-eq v14, v3, :cond_2

    const-string v15, ", bitrate="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz v13, :cond_3

    const-string v14, ", codecs="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v12, :cond_a

    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v14, 0x0

    :goto_0
    iget v15, v12, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v14, v15, :cond_9

    iget-object v15, v12, Landroidx/media3/common/DrmInitData;->schemeDatas:[Landroidx/media3/common/DrmInitData$SchemeData;

    aget-object v15, v15, v14

    iget-object v15, v15, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    sget-object v3, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v15, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "cenc"

    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v20, v12

    goto :goto_2

    :cond_4
    sget-object v3, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v15, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "clearkey"

    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object v3, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v15, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "playready"

    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    sget-object v3, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v15, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "widevine"

    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    sget-object v3, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    invoke-virtual {v15, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "universal"

    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v20, v12

    const-string/jumbo v12, "unknown ("

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v12, v20

    const/4 v3, -0x1

    goto :goto_0

    :cond_9
    const-string v3, ", drm=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, -0x1

    :cond_a
    if-eq v11, v3, :cond_b

    if-eq v10, v3, :cond_b

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_b
    float-to-double v10, v9

    sget v3, Lcom/google/common/math/DoubleMath;->$r8$clinit:I

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v14, v10, v12

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v14

    const-wide v20, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v14, v20

    if-lez v3, :cond_d

    cmpl-double v3, v10, v12

    if-eqz v3, :cond_d

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_3

    :cond_c
    const-string v3, ", par="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    sget v9, Landroidx/media3/common/util/Util;->SDK_INT:I

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%.3f"

    invoke-static {v9, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_3
    if-eqz v8, :cond_11

    iget v3, v8, Landroidx/media3/common/ColorInfo;->chromaBitdepth:I

    iget v9, v8, Landroidx/media3/common/ColorInfo;->lumaBitdepth:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_e

    if-eq v3, v10, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v8}, Landroidx/media3/common/ColorInfo;->isDataSpaceValid()Z

    move-result v10

    if-eqz v10, :cond_11

    :goto_4
    const-string v10, ", color="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroidx/media3/common/ColorInfo;->isDataSpaceValid()Z

    move-result v10

    const-string v11, "/"

    if-eqz v10, :cond_f

    iget v10, v8, Landroidx/media3/common/ColorInfo;->colorSpace:I

    invoke-static {v10}, Landroidx/media3/common/ColorInfo;->colorSpaceToString(I)Ljava/lang/String;

    move-result-object v10

    iget v12, v8, Landroidx/media3/common/ColorInfo;->colorRange:I

    invoke-static {v12}, Landroidx/media3/common/ColorInfo;->colorRangeToString(I)Ljava/lang/String;

    move-result-object v12

    iget v8, v8, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->colorTransferToString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_5
    const/4 v10, -0x1

    goto :goto_6

    :cond_f
    const-string v8, "NA/NA/NA"

    goto :goto_5

    :goto_6
    if-eq v9, v10, :cond_10

    if-eq v3, v10, :cond_10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_10
    const-string v3, "NA/NA"

    :goto_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v7, v3

    if-eqz v3, :cond_12

    const-string v3, ", fps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_12
    const/4 v10, -0x1

    if-eq v6, v10, :cond_13

    const-string v3, ", maxSubLayers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_13
    if-eq v5, v10, :cond_14

    const-string v3, ", channels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_14
    if-eq v4, v10, :cond_15

    const-string v3, ", sample_rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_15
    if-eqz v18, :cond_16

    const-string v3, ", language="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v4, "]"

    if-nez v3, :cond_17

    const-string v3, ", labels=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    const/16 v5, 0xc

    invoke-direct {v3, v5}, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;-><init>(I)V

    move-object/from16 v5, v19

    invoke-static {v5, v3}, Lcom/google/common/collect/Maps;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const/4 v3, 0x2

    if-eqz v16, :cond_1b

    const-string v5, ", selectionFlags=["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v6, v16, 0x4

    if-eqz v6, :cond_18

    const-string v6, "auto"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    and-int/lit8 v6, v16, 0x1

    if-eqz v6, :cond_19

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    and-int/lit8 v6, v16, 0x2

    if-eqz v6, :cond_1a

    const-string v6, "forced"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const v5, 0x8000

    if-eqz v17, :cond_2c

    const-string v6, ", roleFlags=["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Landroidx/media3/common/util/Util;->SDK_INT:I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v7, v17, 0x1

    if-eqz v7, :cond_1c

    const-string v7, "main"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    and-int/lit8 v7, v17, 0x2

    if-eqz v7, :cond_1d

    const-string v7, "alt"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    and-int/lit8 v7, v17, 0x4

    if-eqz v7, :cond_1e

    const-string/jumbo v7, "supplementary"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    and-int/lit8 v7, v17, 0x8

    if-eqz v7, :cond_1f

    const-string v7, "commentary"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    and-int/lit8 v7, v17, 0x10

    if-eqz v7, :cond_20

    const-string v7, "dub"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    and-int/lit8 v7, v17, 0x20

    if-eqz v7, :cond_21

    const-string v7, "emergency"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    and-int/lit8 v7, v17, 0x40

    if-eqz v7, :cond_22

    const-string v7, "caption"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    move/from16 v7, v17

    and-int/lit16 v8, v7, 0x80

    if-eqz v8, :cond_23

    const-string/jumbo v8, "subtitle"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    and-int/lit16 v8, v7, 0x100

    if-eqz v8, :cond_24

    const-string/jumbo v8, "sign"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    and-int/lit16 v8, v7, 0x200

    if-eqz v8, :cond_25

    const-string v8, "describes-video"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    and-int/lit16 v8, v7, 0x400

    if-eqz v8, :cond_26

    const-string v8, "describes-music"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    and-int/lit16 v8, v7, 0x800

    if-eqz v8, :cond_27

    const-string v8, "enhanced-intelligibility"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    and-int/lit16 v8, v7, 0x1000

    if-eqz v8, :cond_28

    const-string/jumbo v8, "transcribes-dialog"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    and-int/lit16 v8, v7, 0x2000

    if-eqz v8, :cond_29

    const-string v8, "easy-read"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    and-int/lit16 v8, v7, 0x4000

    if-eqz v8, :cond_2a

    const-string/jumbo v8, "trick-play"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    and-int v8, v7, v5

    if-eqz v8, :cond_2b

    const-string v8, "auxiliary"

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_2c
    move/from16 v7, v17

    :goto_8
    and-int v1, v7, v5

    if-eqz v1, :cond_32

    const-string v1, ", auxiliaryTrackType="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-eqz v0, :cond_31

    const/4 v1, 0x1

    if-eq v0, v1, :cond_30

    if-eq v0, v3, :cond_2f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2d

    const-string v0, "depth metadata"

    goto :goto_9

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported auxiliary track type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const-string v0, "depth-inverse"

    goto :goto_9

    :cond_2f
    const-string v0, "depth-linear"

    goto :goto_9

    :cond_30
    const-string v0, "original"

    goto :goto_9

    :cond_31
    const-string/jumbo v0, "undefined"

    :goto_9
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Landroidx/media3/common/Format$Builder;
    .locals 3

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->id:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->label:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->labels:Lcom/google/common/collect/ImmutableList;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->labels:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->language:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->selectionFlags:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->selectionFlags:I

    iget v1, p0, Landroidx/media3/common/Format;->roleFlags:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->roleFlags:I

    iget v1, p0, Landroidx/media3/common/Format;->averageBitrate:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->averageBitrate:I

    iget v1, p0, Landroidx/media3/common/Format;->peakBitrate:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->peakBitrate:I

    iget-object v1, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->codecs:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->metadata:Landroidx/media3/common/Metadata;

    iget-object v1, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->containerMimeType:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->sampleMimeType:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->maxInputSize:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->maxInputSize:I

    iget v1, p0, Landroidx/media3/common/Format;->maxNumReorderSamples:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->maxNumReorderSamples:I

    iget-object v1, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->initializationData:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-wide v1, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iput-wide v1, v0, Landroidx/media3/common/Format$Builder;->subsampleOffsetUs:J

    iget-boolean v1, p0, Landroidx/media3/common/Format;->hasPrerollSamples:Z

    iput-boolean v1, v0, Landroidx/media3/common/Format$Builder;->hasPrerollSamples:Z

    iget v1, p0, Landroidx/media3/common/Format;->width:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->width:I

    iget v1, p0, Landroidx/media3/common/Format;->height:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->height:I

    iget v1, p0, Landroidx/media3/common/Format;->frameRate:F

    iput v1, v0, Landroidx/media3/common/Format$Builder;->frameRate:F

    iget v1, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->rotationDegrees:I

    iget v1, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    iput v1, v0, Landroidx/media3/common/Format$Builder;->pixelWidthHeightRatio:F

    iget-object v1, p0, Landroidx/media3/common/Format;->projectionData:[B

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->projectionData:[B

    iget v1, p0, Landroidx/media3/common/Format;->stereoMode:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->stereoMode:I

    iget-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget v1, p0, Landroidx/media3/common/Format;->maxSubLayers:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->maxSubLayers:I

    iget v1, p0, Landroidx/media3/common/Format;->channelCount:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->channelCount:I

    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->sampleRate:I

    iget v1, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->pcmEncoding:I

    iget v1, p0, Landroidx/media3/common/Format;->encoderDelay:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->encoderDelay:I

    iget v1, p0, Landroidx/media3/common/Format;->encoderPadding:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->encoderPadding:I

    iget v1, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->accessibilityChannel:I

    iget v1, p0, Landroidx/media3/common/Format;->cueReplacementBehavior:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->cueReplacementBehavior:I

    iget v1, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->tileCountHorizontal:I

    iget v1, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    iput v1, v0, Landroidx/media3/common/Format$Builder;->tileCountVertical:I

    iget p0, p0, Landroidx/media3/common/Format;->cryptoType:I

    iput p0, v0, Landroidx/media3/common/Format$Builder;->cryptoType:I

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_3

    const-class v1, Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroidx/media3/common/Format;

    iget v1, p0, Landroidx/media3/common/Format;->hashCode:I

    if-eqz v1, :cond_2

    iget v2, p1, Landroidx/media3/common/Format;->hashCode:I

    if-eqz v2, :cond_2

    if-eq v1, v2, :cond_2

    goto/16 :goto_0

    :cond_2
    iget v1, p0, Landroidx/media3/common/Format;->selectionFlags:I

    iget v2, p1, Landroidx/media3/common/Format;->selectionFlags:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->roleFlags:I

    iget v2, p1, Landroidx/media3/common/Format;->roleFlags:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    iget v2, p1, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->averageBitrate:I

    iget v2, p1, Landroidx/media3/common/Format;->averageBitrate:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->peakBitrate:I

    iget v2, p1, Landroidx/media3/common/Format;->peakBitrate:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->maxInputSize:I

    iget v2, p1, Landroidx/media3/common/Format;->maxInputSize:I

    if-ne v1, v2, :cond_3

    iget-wide v1, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iget-wide v3, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->width:I

    iget v2, p1, Landroidx/media3/common/Format;->width:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->height:I

    iget v2, p1, Landroidx/media3/common/Format;->height:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    iget v2, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->stereoMode:I

    iget v2, p1, Landroidx/media3/common/Format;->stereoMode:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->maxSubLayers:I

    iget v2, p1, Landroidx/media3/common/Format;->maxSubLayers:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->channelCount:I

    iget v2, p1, Landroidx/media3/common/Format;->channelCount:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    iget v2, p1, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v2, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->encoderDelay:I

    iget v2, p1, Landroidx/media3/common/Format;->encoderDelay:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->encoderPadding:I

    iget v2, p1, Landroidx/media3/common/Format;->encoderPadding:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    iget v2, p1, Landroidx/media3/common/Format;->accessibilityChannel:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iget v2, p1, Landroidx/media3/common/Format;->tileCountHorizontal:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    iget v2, p1, Landroidx/media3/common/Format;->tileCountVertical:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->cryptoType:I

    iget v2, p1, Landroidx/media3/common/Format;->cryptoType:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->frameRate:F

    iget v2, p1, Landroidx/media3/common/Format;->frameRate:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3

    iget v1, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    iget v2, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->labels:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p1, Landroidx/media3/common/Format;->labels:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->projectionData:[B

    iget-object v2, p1, Landroidx/media3/common/Format;->projectionData:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iget-object v2, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget-object v2, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v2, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Landroidx/media3/common/Format;->hashCode:I

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Landroidx/media3/common/Format;->labels:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->selectionFlags:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->roleFlags:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->auxiliaryTrackType:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->averageBitrate:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Format;->peakBitrate:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Landroidx/media3/common/Metadata;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3c1

    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->maxInputSize:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->width:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->height:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->stereoMode:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->maxSubLayers:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->channelCount:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->sampleRate:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->encoderDelay:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->encoderPadding:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->cryptoType:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/common/Format;->hashCode:I

    :cond_7
    iget p0, p0, Landroidx/media3/common/Format;->hashCode:I

    return p0
.end method

.method public final initializationDataEquals(Landroidx/media3/common/Format;)Z
    .locals 4

    iget-object p0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Format("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->bitrate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/media3/common/Format;->sampleRate:I

    const-string v1, "])"

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
