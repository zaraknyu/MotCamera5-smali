.class public final Landroidx/media3/exoplayer/source/TrackGroupArray;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;


# instance fields
.field public hashCode:I

.field public final length:I

.field public final trackGroups:Lcom/google/common/collect/RegularImmutableList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/media3/exoplayer/source/TrackGroupArray;

    const/4 v1, 0x0

    new-array v2, v1, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    sput-object v0, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/common/TrackGroup;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    array-length p1, p1

    iput p1, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    const/4 p0, 0x0

    :goto_0
    iget p1, v0, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge p0, p1, :cond_2

    add-int/lit8 p1, p0, 0x1

    move v1, p1

    :goto_1
    iget v2, v0, Lcom/google/common/collect/RegularImmutableList;->size:I

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/TrackGroup;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Multiple identical TrackGroups added to one TrackGroupArray."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v3, "TrackGroupArray"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move p0, p1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    iget v1, p1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

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

.method public final get(I)Landroidx/media3/common/TrackGroup;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/TrackGroup;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->hashCode:I

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->hashCode:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/TrackGroupArray;->trackGroups:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
