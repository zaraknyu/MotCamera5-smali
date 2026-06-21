.class public final Landroidx/compose/foundation/layout/DerivedHeightModifier;
.super Landroidx/compose/ui/platform/InvertMatrixKt;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;
.implements Landroidx/compose/ui/modifier/ModifierLocalConsumer;


# instance fields
.field public final insets:Landroidx/compose/foundation/layout/WindowInsets;

.field public final unconsumedInsets$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/AndroidWindowInsets;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/DerivedHeightModifier;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/layout/DerivedHeightModifier;->unconsumedInsets$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/DerivedHeightModifier;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/DerivedHeightModifier;

    iget-object p1, p1, Landroidx/compose/foundation/layout/DerivedHeightModifier;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    iget-object p0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifier;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifier;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    sget-object v0, Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;->INSTANCE$1:Landroidx/compose/foundation/layout/Arrangement$spacedBy$1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    iget-object p0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifier;->unconsumedInsets$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result v4

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    if-nez v4, :cond_0

    sget-object p2, Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$1;->INSTANCE$2:Landroidx/compose/foundation/layout/BoxMeasurePolicy$measure$1;

    const/4 p3, 0x0

    invoke-interface {p1, p3, p3, p0, p2}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v2, 0x0

    move v5, v4

    move-wide v0, p3

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIII)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->width:I

    new-instance p4, Landroidx/compose/ui/draw/PainterNode$measure$1;

    const/4 v0, 0x5

    invoke-direct {p4, p2, v0}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    invoke-interface {p1, p3, v4, p0, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final onModifierLocalsUpdated(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V
    .locals 2

    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->ModifierLocalConsumedWindowInsets:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    invoke-interface {p1, v0}, Landroidx/compose/ui/modifier/ModifierLocalReadScope;->getCurrent(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/layout/WindowInsets;

    new-instance v0, Landroidx/compose/foundation/layout/ExcludeInsets;

    iget-object v1, p0, Landroidx/compose/foundation/layout/DerivedHeightModifier;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-direct {v0, v1, p1}, Landroidx/compose/foundation/layout/ExcludeInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/DerivedHeightModifier;->unconsumedInsets$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
