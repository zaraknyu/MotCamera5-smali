.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# static fields
.field public static final emptyBeyondBoundsScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$Companion$emptyBeyondBoundsScope$1;


# instance fields
.field public beyondBoundsInfo:Landroidx/room/ObservedTableVersions;

.field public orientation:Landroidx/compose/foundation/gestures/Orientation;

.field public state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$Companion$emptyBeyondBoundsScope$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->emptyBeyondBoundsScope:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode$Companion$emptyBeyondBoundsScope$1;

    return-void
.end method


# virtual methods
.method public final getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 2

    sget-object v0, Landroidx/compose/ui/layout/BeyondBoundsLayoutKt;->ModifierLocalBeyondBoundsLayout:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    new-instance v1, Landroidx/compose/ui/modifier/SingleLocalMap;

    invoke-direct {v1, v0}, Landroidx/compose/ui/modifier/SingleLocalMap;-><init>(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)V

    iget-object v0, v1, Landroidx/compose/ui/modifier/SingleLocalMap;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final hasMoreContent-FR3nfPY(Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;I)Z
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v2, :cond_5

    goto :goto_4

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    :goto_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v2, :cond_5

    goto :goto_4

    :cond_3
    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    :cond_5
    :goto_2
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->isForward-4vf7U8o(I)Z

    move-result p2

    if-eqz p2, :cond_6

    iget p1, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->end:I

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsModifierNode;->state:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v1

    if-ge p1, p0, :cond_7

    goto :goto_3

    :cond_6
    iget p0, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo$Interval;->start:I

    if-lez p0, :cond_7

    :goto_3
    return v1

    :cond_7
    :goto_4
    const/4 p0, 0x0

    return p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Lazy list does not support beyond bounds layout for the specified direction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isForward-4vf7U8o(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x6

    if-ne p1, v2, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_5

    if-ne p0, v1, :cond_4

    return v1

    :cond_4
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    return v0

    :cond_6
    const/4 v2, 0x4

    if-ne p1, v2, :cond_9

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_8

    if-ne p0, v1, :cond_7

    return v0

    :cond_7
    new-instance p0, Lcom/google/gson/JsonParseException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_8
    return v1

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Lazy list does not support beyond bounds layout for the specified direction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    new-instance p4, Landroidx/compose/ui/draw/PainterNode$measure$1;

    const/16 v0, 0x9

    invoke-direct {p4, p0, v0}, Landroidx/compose/ui/draw/PainterNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, p2, p3, p0, p4}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
