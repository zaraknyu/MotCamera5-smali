.class public final Landroidx/compose/foundation/layout/PaddingValuesImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bottom:F

.field public final end:F

.field public final start:F

.field public final top:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    iput p2, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    iput p3, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    iput p4, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    const/4 p0, 0x0

    cmpl-float p1, p1, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    cmpl-float p2, p2, p0

    if-ltz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    and-int/2addr p1, p2

    cmpl-float p2, p3, p0

    if-ltz p2, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    and-int/2addr p1, p2

    cmpl-float p0, p4, p0

    if-ltz p0, :cond_3

    move v0, v1

    :cond_3
    and-int p0, p1, v0

    if-nez p0, :cond_4

    const-string p0, "Padding must be non-negative"

    invoke-static {p0}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    return p0

    :cond_0
    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    return p0
.end method

.method public final calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v0, :cond_0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    return p0

    :cond_0
    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iget v0, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    invoke-static {v1, v0}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    iget v1, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    iget v1, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    iget p1, p1, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IFI)I

    move-result v0

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaddingValues(start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->start:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->top:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->end:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/foundation/layout/PaddingValuesImpl;->bottom:F

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
