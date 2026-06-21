.class public final Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final angle:F

.field public final center$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final cornerPoints:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->cornerPoints:Ljava/util/List;

    iput p2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->angle:F

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    new-instance p1, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->center$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle$$ExternalSyntheticLambda0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;I)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Exactly four corner points are required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final contains(Lcom/motorola/camera/utility/TiltShiftUtil$Point;)Z
    .locals 5

    const-string/jumbo v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->angle:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->center$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    invoke-virtual {p1, v0, v2}, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->rotate(FLcom/motorola/camera/utility/TiltShiftUtil$Point;)Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->cornerPoints:Ljava/util/List;

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    invoke-virtual {v3, v0, v4}, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->rotate(FLcom/motorola/camera/utility/TiltShiftUtil$Point;)Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v0, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v3, v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v3, v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v4, v4, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v2, v2, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v4, v4, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_4

    :cond_4
    iget p0, p1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_5

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_5

    iget p0, p1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    cmpg-float p1, v3, p0

    if-gtz p1, :cond_5

    cmpg-float p0, p0, v2

    if-gtz p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_8
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_9
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;

    iget-object v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->cornerPoints:Ljava/util/List;

    iget-object v3, p1, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->cornerPoints:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->angle:F

    iget p1, p1, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->angle:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->cornerPoints:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->angle:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RotatedRectangle(cornerPoints="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->cornerPoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", angle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->angle:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
