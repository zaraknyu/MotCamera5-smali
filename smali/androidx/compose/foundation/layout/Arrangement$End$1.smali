.class public final Landroidx/compose/foundation/layout/Arrangement$End$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$Horizontal;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/Arrangement$End$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$systemInsets(ILjava/lang/String;)Landroidx/compose/foundation/layout/AndroidWindowInsets;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    new-instance v0, Landroidx/compose/foundation/layout/AndroidWindowInsets;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/layout/AndroidWindowInsets;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static final access$valueInsetsIgnoringVisibility(ILjava/lang/String;)Landroidx/compose/foundation/layout/ValueInsets;
    .locals 2

    sget-object p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    new-instance p0, Landroidx/compose/foundation/layout/ValueInsets;

    new-instance v0, Landroidx/compose/foundation/layout/InsetsValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroidx/compose/foundation/layout/InsetsValues;-><init>(IIII)V

    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/layout/ValueInsets;-><init>(Landroidx/compose/foundation/layout/InsetsValues;Ljava/lang/String;)V

    return-object p0
.end method

.method public static current(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/layout/WindowInsetsHolder;
    .locals 4

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Landroidx/compose/foundation/layout/WindowInsetsHolder;->viewMap:Ljava/util/WeakHashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/layout/WindowInsetsHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v2, Landroidx/compose/foundation/layout/WindowInsetsHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne v3, v1, :cond_2

    :cond_1
    new-instance v3, Landroidx/compose/runtime/Latch$await$2$2;

    const/16 v1, 0xd

    invoke-direct {v3, v1, v2, v0}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3, p0}, Landroidx/compose/runtime/AnchoredGroupPath;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/ComposerImpl;)V

    return-object v2

    :goto_1
    monitor-exit v1

    throw p0
.end method


# virtual methods
.method public arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$End$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p4, p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p3, p5, p0}, Landroidx/compose/foundation/layout/Arrangement;->placeLeftOrTop$foundation_layout_release([I[IZ)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-static {p2, p3, p5, p0}, Landroidx/compose/foundation/layout/Arrangement;->placeRightOrBottom$foundation_layout_release(I[I[IZ)V

    :goto_0
    return-void

    :pswitch_0
    const/4 p0, 0x0

    invoke-static {p2, p3, p5, p0}, Landroidx/compose/foundation/layout/Arrangement;->placeSpaceAround$foundation_layout_release(I[I[IZ)V

    return-void

    :pswitch_1
    const/4 p0, 0x0

    invoke-static {p3, p5, p0}, Landroidx/compose/foundation/layout/Arrangement;->placeLeftOrTop$foundation_layout_release([I[IZ)V

    return-void

    :pswitch_2
    sget-object p0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p4, p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p2, p3, p5, p0}, Landroidx/compose/foundation/layout/Arrangement;->placeRightOrBottom$foundation_layout_release(I[I[IZ)V

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    invoke-static {p3, p5, p0}, Landroidx/compose/foundation/layout/Arrangement;->placeLeftOrTop$foundation_layout_release([I[IZ)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/Arrangement$End$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "Arrangement#Start"

    return-object p0

    :pswitch_1
    const-string p0, "AbsoluteArrangement#SpaceAround"

    return-object p0

    :pswitch_2
    const-string p0, "AbsoluteArrangement#Left"

    return-object p0

    :pswitch_3
    const-string p0, "Arrangement#End"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
