.class public final Landroidx/compose/material/Shapes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final large:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public final medium:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public final small:Landroidx/compose/foundation/shape/RoundedCornerShape;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x4

    int-to-float v1, v0

    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v0}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    const/4 v2, 0x0

    int-to-float v2, v2

    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/compose/material/Shapes;->small:Landroidx/compose/foundation/shape/RoundedCornerShape;

    iput-object v0, p0, Landroidx/compose/material/Shapes;->medium:Landroidx/compose/foundation/shape/RoundedCornerShape;

    iput-object v2, p0, Landroidx/compose/material/Shapes;->large:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroidx/compose/material/Shapes;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/material/Shapes;

    iget-object v0, p1, Landroidx/compose/material/Shapes;->small:Landroidx/compose/foundation/shape/RoundedCornerShape;

    iget-object v1, p0, Landroidx/compose/material/Shapes;->small:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/compose/material/Shapes;->medium:Landroidx/compose/foundation/shape/RoundedCornerShape;

    iget-object v1, p1, Landroidx/compose/material/Shapes;->medium:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/compose/material/Shapes;->large:Landroidx/compose/foundation/shape/RoundedCornerShape;

    iget-object p1, p1, Landroidx/compose/material/Shapes;->large:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/material/Shapes;->small:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-virtual {v0}, Landroidx/compose/foundation/shape/RoundedCornerShape;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/material/Shapes;->medium:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-virtual {v1}, Landroidx/compose/foundation/shape/RoundedCornerShape;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/material/Shapes;->large:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-virtual {p0}, Landroidx/compose/foundation/shape/RoundedCornerShape;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Shapes(small="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/material/Shapes;->small:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", medium="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/Shapes;->medium:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", large="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/material/Shapes;->large:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
