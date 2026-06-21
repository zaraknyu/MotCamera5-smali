.class public final synthetic Landroidx/compose/ui/platform/AndroidComposeView$focusOwner$6;
.super Lkotlin/jvm/internal/MutablePropertyReference;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KMutableProperty0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/platform/AndroidComposeView$focusOwner$6;->$r8$classId:I

    move-object p2, p3

    move-object p3, p5

    move p5, p1

    move-object p1, p4

    move-object p4, p6

    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/PropertyReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final computeReflected()Lkotlin/reflect/KCallable;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p0}, Lkotlin/jvm/internal/ReflectionFactory;->mutableProperty0(Landroidx/compose/ui/platform/AndroidComposeView$focusOwner$6;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/compose/ui/platform/AndroidComposeView$focusOwner$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/focus/FocusOwnerImpl;

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic getGetter()Lkotlin/reflect/KProperty$Getter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView$focusOwner$6;->getGetter()Lkotlin/reflect/KProperty0$Getter;

    move-result-object p0

    return-object p0
.end method

.method public final getGetter()Lkotlin/reflect/KProperty0$Getter;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KMutableProperty0;

    invoke-interface {p0}, Lkotlin/reflect/KProperty0;->getGetter()Lkotlin/reflect/KProperty0$Getter;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic getSetter()Lkotlin/reflect/KMutableProperty$Setter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView$focusOwner$6;->getSetter()Lkotlin/reflect/KMutableProperty0$Setter;

    move-result-object p0

    return-object p0
.end method

.method public final getSetter()Lkotlin/reflect/KMutableProperty0$Setter;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/PropertyReference;->getReflected()Lkotlin/reflect/KProperty;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KMutableProperty0;

    invoke-interface {p0}, Lkotlin/reflect/KMutableProperty0;->getSetter()Lkotlin/reflect/KMutableProperty0$Setter;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Lkotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
