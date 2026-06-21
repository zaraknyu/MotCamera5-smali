.class public Landroidx/media3/common/TrackSelectionParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

.field public final disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

.field public final ignoredTextSelectionFlags:I

.field public final isViewportSizeLimitedByPhysicalDisplaySize:Z

.field public final maxAudioBitrate:I

.field public final maxAudioChannelCount:I

.field public final maxVideoBitrate:I

.field public final maxVideoFrameRate:I

.field public final maxVideoHeight:I

.field public final maxVideoWidth:I

.field public final overrides:Lcom/google/common/collect/RegularImmutableMap;

.field public final preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

.field public final preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

.field public final preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

.field public final preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

.field public final preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

.field public final usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

.field public final viewportHeight:I

.field public final viewportOrientationMayChange:Z

.field public final viewportWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/media3/common/TrackSelectionParameters$Builder;

    invoke-direct {v0}, Landroidx/media3/common/TrackSelectionParameters$Builder;-><init>()V

    new-instance v1, Landroidx/media3/common/TrackSelectionParameters;

    invoke-direct {v1, v0}, Landroidx/media3/common/TrackSelectionParameters;-><init>(Landroidx/media3/common/TrackSelectionParameters$Builder;)V

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

.method public constructor <init>(Landroidx/media3/common/TrackSelectionParameters$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoWidth:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoHeight:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoFrameRate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoBitrate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportWidth:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportWidth:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportHeight:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportHeight:I

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxAudioChannelCount:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxAudioBitrate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMap;->copyOf(Ljava/util/HashMap;)Lcom/google/common/collect/RegularImmutableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/RegularImmutableMap;

    iget-object p1, p1, Landroidx/media3/common/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/TrackSelectionParameters;

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    iget v1, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    iget v1, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    iget v1, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    iget v1, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    iget-boolean v1, p1, Landroidx/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportWidth:I

    iget v1, p1, Landroidx/media3/common/TrackSelectionParameters;->viewportWidth:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportHeight:I

    iget v1, p1, Landroidx/media3/common/TrackSelectionParameters;->viewportHeight:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    iget-boolean v1, p1, Landroidx/media3/common/TrackSelectionParameters;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    iget v1, p1, Landroidx/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    iget v1, p1, Landroidx/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-object v1, p1, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    invoke-virtual {v0, v1}, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    iget-boolean v1, p1, Landroidx/media3/common/TrackSelectionParameters;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    iget v1, p1, Landroidx/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/RegularImmutableMap;

    iget-object v1, p0, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->equalsImpl(Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    iget-object p1, p1, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    add-int/2addr v0, v2

    const v2, 0x1b4d89f

    mul-int/2addr v0, v2

    iget-boolean v3, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportWidth:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Landroidx/media3/common/TrackSelectionParameters;->viewportHeight:I

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Landroidx/media3/common/TrackSelectionParameters;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x3c1

    iget-object v3, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/lit16 v3, v3, 0x3c1

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit16 v0, v0, 0x745f

    mul-int/2addr v0, v1

    iget-object v3, p0, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/lit16 v3, v3, 0x3c1

    iget-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget v0, p0, Landroidx/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object v0, p0, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableMap;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
