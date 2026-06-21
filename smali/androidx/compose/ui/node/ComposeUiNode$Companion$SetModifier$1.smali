.class public final Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

.field public static final INSTANCE$1:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

.field public static final INSTANCE$2:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

.field public static final INSTANCE$3:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;->INSTANCE$1:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    new-instance v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;->INSTANCE$2:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    new-instance v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;->INSTANCE:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    new-instance v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;->INSTANCE$3:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget p0, p0, Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/node/ComposeUiNode;

    check-cast p2, Landroidx/compose/runtime/CompositionLocalMap;

    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    iput-object p2, p1, Landroidx/compose/ui/node/LayoutNode;->compositionLocalMap:Landroidx/compose/runtime/CompositionLocalMap;

    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalDensity:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    check-cast p2, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNode;->setDensity(Landroidx/compose/ui/unit/Density;)V

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalLayoutDirection:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p2, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v1, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v1, v0, :cond_1

    iput-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayers$ui_release()V

    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->onLayoutDirectionChange()V

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p2, v0}, Landroidx/compose/runtime/AnchoredGroupPath;->read(Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNode;->setViewConfiguration(Landroidx/compose/ui/platform/ViewConfiguration;)V

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    const p2, 0x8000

    and-int/2addr p1, p2

    if-eqz p1, :cond_b

    :goto_1
    if-eqz p0, :cond_b

    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    move-object v0, p0

    move-object v1, p1

    :goto_2
    if-eqz v0, :cond_a

    instance-of v2, v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    check-cast v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v2, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_5

    :cond_2
    iput-boolean v3, v0, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    goto :goto_5

    :cond_3
    iget v2, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_9

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_9

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v2, v2, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v4, 0x0

    :goto_3
    if-eqz v2, :cond_8

    iget v5, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v3, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v5, 0x10

    new-array v5, v5, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v0, p1

    :cond_6
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_7
    :goto_4
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_8
    if-ne v4, v3, :cond_9

    goto :goto_2

    :cond_9
    :goto_5
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_2

    :cond_a
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_b

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/node/ComposeUiNode;

    check-cast p2, Landroidx/compose/ui/layout/MeasurePolicy;

    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNode;->setMeasurePolicy(Landroidx/compose/ui/layout/MeasurePolicy;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/node/ComposeUiNode;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/ui/node/ComposeUiNode;

    check-cast p2, Landroidx/compose/ui/Modifier;

    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNode;->setModifier(Landroidx/compose/ui/Modifier;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
