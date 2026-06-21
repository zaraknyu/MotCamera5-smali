.class public final Lh/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lh/x;->$r8$classId:I

    iput-object p2, p0, Lh/x;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lh/x;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p2, Lh/x;

    iget-object p0, p0, Lh/x;->a:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/adobe_scan/editor/AdobeDocEditActivityLauncher;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lh/x;-><init>(ILjava/lang/Object;)V

    const p0, 0xfec8ed0

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Lcom/motorola/camera/ui/compose/ThemeKt;->CameraTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object p0, p0, Lh/x;->a:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/adobe_scan/editor/AdobeDocEditActivityLauncher;

    and-int/lit8 p2, p2, 0x3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_3

    :cond_3
    :goto_2
    const p2, 0x6e3c21fe

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    if-ne p2, v0, :cond_4

    new-instance p2, Lb/o$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lb/o$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast p2, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const v2, 0x4c5de2

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_5

    if-ne v3, v0, :cond_6

    :cond_5
    new-instance v3, Lc/X$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {v3, v0, p0}, Lc/X$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_6
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/16 p0, 0x36

    invoke-static {v1, p2, v3, p1, p0}, La/l;->DownloadAdobeDialog(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_5

    :cond_8
    :goto_4
    iget-object p0, p0, Lh/x;->a:Ljava/lang/Object;

    check-cast p0, Lh/C;

    iget-object p0, p0, Lh/C;->d:Lh/d;

    iget-object p2, p0, Lh/d;->i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object p0, p0, Lh/d;->j:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    const/4 v0, 0x0

    invoke-static {p2, p0, p1, v0}, Le/W;->a(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
