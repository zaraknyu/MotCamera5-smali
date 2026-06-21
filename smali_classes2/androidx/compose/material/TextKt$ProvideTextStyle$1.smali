.class public final Landroidx/compose/material/TextKt$ProvideTextStyle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic $r8$classId:I

.field public final synthetic $value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/material/Typography;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/material/TextKt$ProvideTextStyle$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/compose/material/TextKt$ProvideTextStyle$1;->$value:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material/TextKt$ProvideTextStyle$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    const/4 p3, 0x0

    iput p3, p0, Landroidx/compose/material/TextKt$ProvideTextStyle$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/compose/material/TextKt$ProvideTextStyle$1;->$value:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material/TextKt$ProvideTextStyle$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/compose/material/TextKt$ProvideTextStyle$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr p2, v2

    invoke-virtual {p1, p2, v0}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/compose/material/TextKt$ProvideTextStyle$1;->$value:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/material/Typography;

    iget-object p2, p2, Landroidx/compose/material/Typography;->body1:Landroidx/compose/ui/text/TextStyle;

    new-instance v0, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$1$1;

    iget-object p0, p0, Landroidx/compose/material/TextKt$ProvideTextStyle$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {v0, p0}, Landroidx/compose/material/MaterialThemeKt$MaterialTheme$1$1;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const p0, 0xad0597a

    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/internal/Utils_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 v0, 0x30

    invoke-static {p2, p0, p1, v0}, Landroidx/compose/material/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

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

    iget-object p2, p0, Landroidx/compose/material/TextKt$ProvideTextStyle$1;->$value:Ljava/lang/Object;

    check-cast p2, Landroidx/compose/ui/text/TextStyle;

    const/16 v0, 0x31

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/material/TextKt$ProvideTextStyle$1;->$content:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {p2, p0, p1, v0}, Landroidx/compose/material/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
