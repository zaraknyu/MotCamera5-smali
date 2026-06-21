.class public Landroidx/media3/common/TrackSelectionParameters$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

.field public disabledTrackTypes:Ljava/util/HashSet;

.field public ignoredTextSelectionFlags:I

.field public isViewportSizeLimitedByPhysicalDisplaySize:Z

.field public maxAudioBitrate:I

.field public maxAudioChannelCount:I

.field public maxVideoBitrate:I

.field public maxVideoFrameRate:I

.field public maxVideoHeight:I

.field public maxVideoWidth:I

.field public overrides:Ljava/util/HashMap;

.field public preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

.field public preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

.field public preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

.field public preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

.field public preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

.field public usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

.field public viewportHeight:I

.field public viewportOrientationMayChange:Z

.field public viewportWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoWidth:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoHeight:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoFrameRate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoBitrate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportWidth:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    iput-boolean v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    sget-object v2, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v2, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iput-object v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    iput-object v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxAudioChannelCount:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxAudioBitrate:I

    iput-object v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    sget-object v0, Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;->DEFAULT:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iput-object v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iput-boolean v1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public clearOverridesOfType(I)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/TrackSelectionOverride;

    iget-object v0, v0, Landroidx/media3/common/TrackSelectionOverride;->mediaTrackGroup:Landroidx/media3/common/TrackGroup;

    iget v0, v0, Landroidx/media3/common/TrackGroup;->type:I

    if-ne v0, p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final init(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 2

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoWidth:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoWidth:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoHeight:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoHeight:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoFrameRate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoFrameRate:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->maxVideoBitrate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxVideoBitrate:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->viewportWidth:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportWidth:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->viewportHeight:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportHeight:I

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->isViewportSizeLimitedByPhysicalDisplaySize:Z

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->viewportOrientationMayChange:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredVideoLanguages:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->maxAudioChannelCount:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxAudioChannelCount:I

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->maxAudioBitrate:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->maxAudioBitrate:I

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->audioOffloadPreferences:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    iget-object v0, p1, Landroidx/media3/common/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iget-boolean v0, p1, Landroidx/media3/common/TrackSelectionParameters;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    iput-boolean v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    iget v0, p1, Landroidx/media3/common/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    iput v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroidx/media3/common/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/media3/common/TrackSelectionParameters;->overrides:Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    return-void
.end method

.method public varargs setPreferredTextLanguages([Ljava/lang/String;)Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 5

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/media3/common/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/RegularImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iput-boolean v2, p0, Landroidx/media3/common/TrackSelectionParameters$Builder;->usePreferredTextLanguagesAndRoleFlagsFromCaptioningManager:Z

    return-object p0
.end method
