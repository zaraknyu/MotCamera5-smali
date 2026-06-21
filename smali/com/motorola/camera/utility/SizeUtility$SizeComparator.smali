.class public final Lcom/motorola/camera/utility/SizeUtility$SizeComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    mul-int/2addr p1, p0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    mul-int/2addr p2, p0

    sub-int/2addr p1, p2

    return p1
.end method
