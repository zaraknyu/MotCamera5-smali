.class public final Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$Horizontal;
.implements Landroidx/compose/foundation/layout/Arrangement$Vertical;


# instance fields
.field public final alignment:Lkotlin/jvm/functions/Function2;

.field public final rtlMirror:Z

.field public final space:F

.field public final spacing:F


# direct methods
.method public constructor <init>(FZLkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    iput-object p3, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    iput p1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->spacing:F

    return-void
.end method


# virtual methods
.method public final arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V
    .locals 8

    .line 1
    array-length v0, p3

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget v0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    .line 3
    iget-boolean v0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p4, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4
    :goto_0
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->Start:Landroidx/compose/foundation/layout/Arrangement$End$1;

    if-nez v0, :cond_2

    .line 5
    array-length v0, p3

    move v1, v2

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v1, v0, :cond_3

    aget v4, p3, v1

    add-int/lit8 v6, v5, 0x1

    sub-int v7, p2, v4

    .line 6
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, p5, v5

    sub-int v3, p2, v3

    sub-int/2addr v3, v4

    .line 7
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 8
    aget v5, p5, v5

    add-int/2addr v5, v4

    add-int v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    move v5, v4

    move v4, v3

    move v3, v5

    move v5, v6

    goto :goto_1

    .line 9
    :cond_2
    array-length v0, p3

    sub-int/2addr v0, v1

    move v3, v2

    move v4, v3

    :goto_2
    const/4 v1, -0x1

    if-ge v1, v0, :cond_3

    .line 10
    aget v1, p3, v0

    sub-int v4, p2, v1

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, p5, v0

    sub-int v3, p2, v3

    sub-int/2addr v3, v1

    .line 12
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 13
    aget v3, p5, v0

    add-int/2addr v3, v1

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    sub-int/2addr v3, v4

    .line 14
    iget-object p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_4

    if-ge v3, p2, :cond_4

    sub-int/2addr p2, v3

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 16
    array-length p1, p5

    :goto_3
    if-ge v2, p1, :cond_4

    .line 17
    aget p2, p5, v2

    add-int/2addr p2, p0

    aput p2, p5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method

.method public final arrange(Landroidx/compose/ui/unit/Density;I[I[I)V
    .locals 6

    .line 18
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    iget v0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    iget v1, p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    iget-boolean v1, p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    iget-object p1, p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

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

.method public final getSpacing-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->spacing:F

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "Absolute"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Arrangement#spacedAligned("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
