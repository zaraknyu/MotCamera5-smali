.class public final Landroidx/media3/common/Timeline$Window;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

.field public static final SINGLE_WINDOW_UID:Ljava/lang/Object;


# instance fields
.field public defaultPositionUs:J

.field public durationUs:J

.field public elapsedRealtimeEpochOffsetMs:J

.field public firstPeriodIndex:I

.field public isDynamic:Z

.field public isPlaceholder:Z

.field public isSeekable:Z

.field public lastPeriodIndex:I

.field public liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field public mediaItem:Landroidx/media3/common/MediaItem;

.field public positionInFirstPeriodUs:J

.field public presentationStartTimeMs:J

.field public tag:Ljava/lang/Object;

.field public uid:Ljava/lang/Object;

.field public windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    new-instance v0, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {v0}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    sget-object v1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object v1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v7, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    new-instance v1, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    sget-object v14, Landroidx/media3/common/MediaItem$RequestMetadata;->EMPTY:Landroidx/media3/common/MediaItem$RequestMetadata;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    new-instance v2, Landroidx/media3/common/MediaItem$LocalConfiguration;

    const/4 v4, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v2 .. v9}, Landroidx/media3/common/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/common/MediaItem$DrmConfiguration;Ljava/util/List;Lcom/google/common/collect/ImmutableList;J)V

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object v11, v5

    :goto_0
    new-instance v8, Landroidx/media3/common/MediaItem;

    new-instance v10, Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-direct {v10, v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration;-><init>(Landroidx/media3/extractor/PositionHolder;)V

    new-instance v12, Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-direct {v12, v1}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;)V

    sget-object v13, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    const-string v9, "androidx.media3.common.Timeline"

    invoke-direct/range {v8 .. v14}, Landroidx/media3/common/MediaItem;-><init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$ClippingProperties;Landroidx/media3/common/MediaItem$LocalConfiguration;Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaItem$RequestMetadata;)V

    sput-object v8, Landroidx/media3/common/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0x9

    const/16 v1, 0xa

    const/4 v2, 0x6

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/16 v0, 0xd

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    sget-object v0, Landroidx/media3/common/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    iput-object v0, p0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/Timeline$Window;

    iget-object v0, p0, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v1, p1, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object v1, p1, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    iget-wide v2, p1, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    iget-wide v2, p1, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    iget-wide v2, p1, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    iget-boolean v1, p1, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    iget-boolean v1, p1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    iget-boolean v1, p1, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p1, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    iget-wide v2, p1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget v1, p1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    iget v1, p1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide p0, p1, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    iget-object v0, p0, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int p0, v2

    add-int/2addr v1, p0

    return v1
.end method

.method public final isLive()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final set(Landroidx/media3/common/MediaItem;ZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJ)V
    .locals 2

    sget-object v0, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/common/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    :goto_0
    iput-object v0, p0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/common/Timeline$Window;->tag:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    iput-wide v0, p0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    iput-wide v0, p0, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    iput-boolean p2, p0, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    iput-boolean p3, p0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    iput-object p4, p0, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iput-wide p5, p0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iput-wide p7, p0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iput p1, p0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iput-boolean p1, p0, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    return-void
.end method
