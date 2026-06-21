.class public final Landroidx/activity/OnBackPressedDispatcher$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/OnBackPressedDispatcher;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/OnBackPressedDispatcher$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$1;->this$0:Landroidx/activity/OnBackPressedDispatcher;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/activity/OnBackPressedDispatcher$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/activity/BackEventCompat;

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$1;->this$0:Landroidx/activity/OnBackPressedDispatcher;

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->inProgressCallback:Landroidx/fragment/app/FragmentManager$1;

    if-nez p1, :cond_2

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackPressedCallbacks:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentManager$1;

    iget-boolean v0, v0, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroidx/fragment/app/FragmentManager$1;

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/activity/BackEventCompat;

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$1;->this$0:Landroidx/activity/OnBackPressedDispatcher;

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->onBackPressedCallbacks:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->getSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentManager$1;

    iget-boolean v1, v1, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Landroidx/fragment/app/FragmentManager$1;

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->inProgressCallback:Landroidx/fragment/app/FragmentManager$1;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackCancelled()V

    :cond_5
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->inProgressCallback:Landroidx/fragment/app/FragmentManager$1;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
