.class public final Lc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public final a:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lc/a;->a:[Landroid/graphics/PointF;

    .line 3
    invoke-virtual {p0}, Lc/a;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 8
    new-array v1, v0, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lc/a;->a:[Landroid/graphics/PointF;

    .line 9
    aput-object p1, v1, v2

    const/4 p0, 0x1

    .line 10
    aput-object p2, v1, p0

    const/4 p0, 0x2

    .line 11
    aput-object p3, v1, p0

    const/4 p0, 0x3

    .line 12
    aput-object p4, v1, p0

    return-void
.end method

.method public constructor <init>(Lc/a;)V
    .locals 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 14
    new-array v1, v0, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lc/a;->a:[Landroid/graphics/PointF;

    .line 15
    iget-object p1, p1, Lc/a;->a:[Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Lc/a;->a([Landroid/graphics/PointF;)V

    return-void
.end method

.method public constructor <init>([Landroid/graphics/PointF;)V
    .locals 4

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 5
    new-array v1, v0, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lc/a;->a:[Landroid/graphics/PointF;

    .line 6
    invoke-virtual {p0, p1}, Lc/a;->a([Landroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public final a([Landroid/graphics/PointF;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 2
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3
    aget-object v2, p1, v0

    iget v2, v2, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    .line 4
    aget-object v5, p1, v0

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    .line 5
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lc/a;->a:[Landroid/graphics/PointF;

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lc/a;->d()V

    return-void
.end method

.method public final a()[Landroid/graphics/PointF;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/a;->a:[Landroid/graphics/PointF;

    return-object p0
.end method

.method public final b()Z
    .locals 4

    iget-object p0, p0, Lc/a;->a:[Landroid/graphics/PointF;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-object v3, p0, v1

    invoke-virtual {v3, v2, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v3, v2, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-virtual {p0, v2, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 5

    iget-object p0, p0, Lc/a;->a:[Landroid/graphics/PointF;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-object v3, p0, v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v2}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-virtual {v3, v4, v4}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    aget-object p0, p0, v3

    invoke-virtual {p0, v2, v4}, Landroid/graphics/PointF;->equals(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public final d()V
    .locals 4

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x0

    iget-object p0, p0, Lc/a;->a:[Landroid/graphics/PointF;

    aput-object v0, p0, v2

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x1

    aput-object v0, p0, v3

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x2

    aput-object v0, p0, v3

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x3

    aput-object v0, p0, v1

    return-void
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lc/a;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lc/a;

    iget-object p1, p1, Lc/a;->a:[Landroid/graphics/PointF;

    iget-object p0, p0, Lc/a;->a:[Landroid/graphics/PointF;

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    aget-object v3, p0, v2

    aget-object v2, p1, v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    aget-object p0, p0, v2

    aget-object p1, p1, v2

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lc/a;->a:[Landroid/graphics/PointF;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v4, Lc/a$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lc/a$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v3, 0x0

    const/16 v5, 0x1f

    iget-object v0, p0, Lc/a;->a:[Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crop "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object p0, p0, Lc/a;->a:[Landroid/graphics/PointF;

    aget-object v0, p0, v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/4 v0, 0x2

    aget-object v0, p0, v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/4 v0, 0x3

    aget-object p0, p0, v0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
