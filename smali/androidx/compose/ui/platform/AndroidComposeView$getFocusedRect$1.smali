.class public final Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

.field public static final INSTANCE$1:Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

.field public static final INSTANCE$2:Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

.field public static final INSTANCE$3:Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;->INSTANCE$1:Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;->INSTANCE$2:Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

    new-instance v0, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;-><init>(II)V

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;->INSTANCE$3:Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;->$r8$classId:I

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$getFocusedRect$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Landroidx/compose/ui/platform/InvertMatrixKt;->canBeSavedToBundle(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/input/rotary/RotaryScrollEvent;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/content/res/Configuration;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/ui/focus/FocusTargetNode;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
