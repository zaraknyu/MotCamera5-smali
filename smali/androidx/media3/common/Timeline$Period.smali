.class public final Landroidx/media3/common/Timeline$Period;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public adPlaybackState:Landroidx/media3/common/AdPlaybackState;

.field public durationUs:J

.field public id:Ljava/lang/Object;

.field public isPlaceholder:Z

.field public positionInWindowUs:J

.field public uid:Ljava/lang/Object;

.field public windowIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iput-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/Timeline$Period;

    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget-object v1, p1, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget v1, p1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    iget-wide v2, p1, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v2, p1, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    iget-boolean v1, p1, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-object p1, p1, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public final getAdDurationUs(II)J
    .locals 1

    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p0

    iget p1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide p0, p0, p2

    return-wide p0

    :cond_0
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0
.end method

.method public final getAdGroupIndexAfterPositionUs(J)I
    .locals 7

    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-wide v1, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    iget p0, v0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, p1, v3

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v5

    if-eqz v3, :cond_0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v2

    iget v3, v2, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-eq v3, v4, :cond_2

    invoke-virtual {v2, v4}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result v2

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v1, p0, :cond_3

    return v1

    :cond_3
    :goto_2
    return v4
.end method

.method public final getAdGroupIndexForPositionUs(J)I
    .locals 5

    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    :goto_0
    if-ltz v1, :cond_2

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, p1, v3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-gez v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, -0x1

    if-ltz v1, :cond_6

    invoke-virtual {p0, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p0

    iget p2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ne p2, p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_6

    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v3, v3, v0

    if-eqz v3, :cond_5

    if-ne v3, v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v1

    :cond_6
    return p1
.end method

.method public final getAdGroupTimeUs(I)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final getFirstAdIndexToPlay(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState$AdGroup;->getNextAdIndexToPlay(I)I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0xd9

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const/16 v3, 0x20

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-boolean v0, p0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p0}, Landroidx/media3/common/AdPlaybackState;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final isLivePostrollPlaceholder(I)Z
    .locals 2

    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isServerSideInsertedAdGroup(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iput-wide p4, p0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    iput-wide p6, p0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    iput-object p8, p0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iput-boolean p9, p0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    return-void
.end method
