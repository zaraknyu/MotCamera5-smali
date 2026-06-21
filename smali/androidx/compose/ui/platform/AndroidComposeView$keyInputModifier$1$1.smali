.class public final Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $focusDirection:Landroidx/compose/ui/focus/FocusDirection;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/focus/FocusDirection;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1$1;->$focusDirection:Landroidx/compose/ui/focus/FocusDirection;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1$1;->$focusDirection:Landroidx/compose/ui/focus/FocusDirection;

    iget p0, p0, Landroidx/compose/ui/focus/FocusDirection;->value:I

    invoke-virtual {p1, p0}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$keyInputModifier$1$1;->$focusDirection:Landroidx/compose/ui/focus/FocusDirection;

    iget p0, p0, Landroidx/compose/ui/focus/FocusDirection;->value:I

    invoke-virtual {p1, p0}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
