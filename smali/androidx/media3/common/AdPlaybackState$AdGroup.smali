.class public final Landroidx/media3/common/AdPlaybackState$AdGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final count:I

.field public final durationsUs:[J

.field public final ids:[Ljava/lang/String;

.field public final mediaItems:[Landroidx/media3/common/MediaItem;

.field public final originalCount:I

.field public final states:[I

.field public final uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0x8

    const/16 v1, 0x9

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-static {v2, v3, v4, v0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(IIIII)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    return-void
.end method

.method public constructor <init>(II[I[Landroidx/media3/common/MediaItem;[J[Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    array-length v1, p4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Log;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iput p2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iput-object p3, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iput-object p4, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    iput-object p5, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    array-length p1, p4

    new-array p1, p1, [Landroid/net/Uri;

    iput-object p1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    :goto_1
    iget-object p1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length p2, p1

    if-ge v2, p2, :cond_2

    aget-object p2, p4, v2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_2

    :cond_1
    iget-object p2, p2, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    :goto_2
    aput-object p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput-object p6, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    const-class v1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/media3/common/AdPlaybackState$AdGroup;

    iget v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    iget v2, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    iget v2, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    iget-object v2, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    iget-object v2, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    iget-object v2, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getNextAdIndexToPlay(I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    :goto_0
    iget-object v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    array-length v2, v1

    if-ge p1, v2, :cond_1

    aget v1, v1, p1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->originalCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    const-wide/16 v1, 0x0

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->mediaItems:[Landroidx/media3/common/MediaItem;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->states:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v1

    mul-int/lit16 v2, v2, 0x3c1

    iget-object p0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->ids:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v2, p0

    mul-int/lit8 v2, v2, 0x1f

    return v2
.end method
