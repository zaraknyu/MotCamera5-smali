.class public final Landroidx/media3/common/AdPlaybackState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NONE:Landroidx/media3/common/AdPlaybackState;

.field public static final REMOVED_AD_GROUP:Landroidx/media3/common/AdPlaybackState$AdGroup;


# instance fields
.field public final adGroupCount:I

.field public final adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Landroidx/media3/common/AdPlaybackState;

    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/media3/common/AdPlaybackState$AdGroup;

    invoke-direct {v0, v2}, Landroidx/media3/common/AdPlaybackState;-><init>([Landroidx/media3/common/AdPlaybackState$AdGroup;)V

    sput-object v0, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    new-instance v3, Landroidx/media3/common/AdPlaybackState$AdGroup;

    new-array v6, v1, [I

    new-array v7, v1, [Landroidx/media3/common/MediaItem;

    new-array v8, v1, [J

    new-array v9, v1, [Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct/range {v3 .. v9}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(II[I[Landroidx/media3/common/MediaItem;[J[Ljava/lang/String;)V

    iget-object v0, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v2, v0

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    invoke-static {v7, v2, v4, v1}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v0, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length v1, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v9, v1, v2, v10, v11}, Ljava/util/Arrays;->fill([JIIJ)V

    iget-object v0, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Landroidx/media3/common/MediaItem;

    iget-object v0, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Ljava/lang/String;

    new-instance v4, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget v6, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    invoke-direct/range {v4 .. v10}, Landroidx/media3/common/AdPlaybackState$AdGroup;-><init>(II[I[Landroidx/media3/common/MediaItem;[J[Ljava/lang/String;)V

    sput-object v4, Landroidx/media3/common/AdPlaybackState;->REMOVED_AD_GROUP:Landroidx/media3/common/AdPlaybackState$AdGroup;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    return-void
.end method

.method public constructor <init>([Landroidx/media3/common/AdPlaybackState$AdGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    iput-object p1, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/common/AdPlaybackState;

    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    iget v1, p1, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget-object p1, p1, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

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

.method public final getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;
    .locals 0

    if-gez p1, :cond_0

    sget-object p0, Landroidx/media3/common/AdPlaybackState;->REMOVED_AD_GROUP:Landroidx/media3/common/AdPlaybackState$AdGroup;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    mul-int/lit16 v0, v0, 0x3c1

    const-wide/16 v1, 0x0

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3c1

    iget-object p0, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdPlaybackState(adsId=null, adResumePositionUs=0, adGroups=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/common/AdPlaybackState;->adGroups:[Landroidx/media3/common/AdPlaybackState$AdGroup;

    array-length v4, v3

    const-string v5, "])"

    if-ge v2, v4, :cond_8

    const-string v4, "adGroup(timeUs=0, ads=["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v4, v1

    :goto_1
    aget-object v6, v3, v2

    iget-object v6, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v6, v6

    const-string v7, ", "

    const/4 v8, 0x1

    if-ge v4, v6, :cond_6

    const-string v6, "ad(state="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v2

    iget-object v6, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    aget v6, v6, v4

    if-eqz v6, :cond_4

    if-eq v6, v8, :cond_3

    const/4 v9, 0x2

    if-eq v6, v9, :cond_2

    const/4 v9, 0x3

    if-eq v6, v9, :cond_1

    const/4 v9, 0x4

    if-eq v6, v9, :cond_0

    const/16 v6, 0x3f

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 v6, 0x21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/16 v6, 0x50

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/16 v6, 0x53

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v6, 0x52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/16 v6, 0x5f

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    const-string v6, ", durationUs="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v2

    iget-object v6, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v9, v6, v4

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v6, v3, v2

    iget-object v6, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v6, v6

    sub-int/2addr v6, v8

    if-ge v4, v6, :cond_5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v3

    sub-int/2addr v3, v8

    if-ge v2, v3, :cond_7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
