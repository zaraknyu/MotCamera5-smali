.class public final Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $content:Lkotlin/jvm/functions/Function2;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/ui/platform/WrappedComposition;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/platform/WrappedComposition;Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    iput p3, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->this$0:Landroidx/compose/ui/platform/WrappedComposition;

    iput-object p2, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->$content:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p2, v3

    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->this$0:Landroidx/compose/ui/platform/WrappedComposition;

    iget-object p2, p2, Landroidx/compose/ui/platform/WrappedComposition;->owner:Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object p0, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->$content:Lkotlin/jvm/functions/Function2;

    invoke-static {p2, p0, p1, v2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->ProvideAndroidCompositionLocals(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    and-int/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p2, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->this$0:Landroidx/compose/ui/platform/WrappedComposition;

    iget-object v0, p2, Landroidx/compose/ui/platform/WrappedComposition;->owner:Landroidx/compose/ui/platform/AndroidComposeView;

    const v1, 0x7f0a026a

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/util/Set;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    instance-of v4, v3, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v4, :cond_3

    instance-of v4, v3, Lkotlin/jvm/internal/markers/KMutableSet;

    if-eqz v4, :cond_4

    :cond_3
    check-cast v3, Ljava/util/Set;

    goto :goto_3

    :cond_4
    move-object v3, v5

    :goto_3
    if-nez v3, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_5

    check-cast v3, Landroid/view/View;

    goto :goto_4

    :cond_5
    move-object v3, v5

    :goto_4
    if-eqz v3, :cond_6

    invoke-virtual {v3, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    :cond_6
    move-object v1, v5

    :goto_5
    instance-of v3, v1, Ljava/util/Set;

    if-eqz v3, :cond_8

    instance-of v3, v1, Lkotlin/jvm/internal/markers/KMappedMarker;

    if-eqz v3, :cond_7

    instance-of v3, v1, Lkotlin/jvm/internal/markers/KMutableSet;

    if-eqz v3, :cond_8

    :cond_7
    move-object v3, v1

    check-cast v3, Ljava/util/Set;

    goto :goto_6

    :cond_8
    move-object v3, v5

    :cond_9
    :goto_6
    if-eqz v3, :cond_b

    iget-object v1, p1, Landroidx/compose/runtime/ComposerImpl;->_compositionData:Landroidx/compose/runtime/CompositionDataImpl;

    if-nez v1, :cond_a

    new-instance v1, Landroidx/compose/runtime/CompositionDataImpl;

    iget-object v4, p1, Landroidx/compose/runtime/ComposerImpl;->composition:Landroidx/compose/runtime/CompositionImpl;

    invoke-direct {v1, v4}, Landroidx/compose/runtime/CompositionDataImpl;-><init>(Landroidx/compose/runtime/CompositionImpl;)V

    iput-object v1, p1, Landroidx/compose/runtime/ComposerImpl;->_compositionData:Landroidx/compose/runtime/CompositionDataImpl;

    :cond_a
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p1, Landroidx/compose/runtime/ComposerImpl;->forceRecomposeScopes:Z

    iput-boolean v2, p1, Landroidx/compose/runtime/ComposerImpl;->sourceMarkersEnabled:Z

    iget-object v1, p1, Landroidx/compose/runtime/ComposerImpl;->slotTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    iget-object v1, p1, Landroidx/compose/runtime/ComposerImpl;->insertTable:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v1}, Landroidx/compose/runtime/SlotTable;->collectSourceInformation()V

    iget-object v1, p1, Landroidx/compose/runtime/ComposerImpl;->writer:Landroidx/compose/runtime/SlotWriter;

    iget-object v2, v1, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    iget-object v4, v2, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    iput-object v4, v1, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    iget-object v2, v2, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    iput-object v2, v1, Landroidx/compose/runtime/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    :cond_b
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-nez v1, :cond_c

    if-ne v2, v4, :cond_d

    :cond_c
    new-instance v2, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1$1$1;

    invoke-direct {v2, p2, v5}, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1$1$1;-><init>(Landroidx/compose/ui/platform/WrappedComposition;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_d
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_e

    if-ne v2, v4, :cond_f

    :cond_e
    new-instance v2, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1$2$1;

    invoke-direct {v2, p2, v5}, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1$2$1;-><init>(Landroidx/compose/ui/platform/WrappedComposition;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_f
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->LaunchedEffect(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/runtime/tooling/InspectionTablesKt;->LocalInspectionTables:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->defaultProvidedValue$runtime_release(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    new-instance v1, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;

    iget-object p0, p0, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;->$content:Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-direct {v1, p2, p0, v2}, Landroidx/compose/ui/platform/WrappedComposition$setContent$1$1;-><init>(Landroidx/compose/ui/platform/WrappedComposition;Lkotlin/jvm/functions/Function2;I)V

    const p0, -0x4722c3de

    invoke-static {p0, v1, p1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p2, 0x38

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/runtime/AnchoredGroupPath;->CompositionLocalProvider(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
