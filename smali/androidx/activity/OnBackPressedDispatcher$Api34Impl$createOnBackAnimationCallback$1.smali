.class public final Landroidx/activity/OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field public final synthetic $onBackCancelled:Landroidx/activity/OnBackPressedDispatcher$3;

.field public final synthetic $onBackInvoked:Landroidx/activity/OnBackPressedDispatcher$3;

.field public final synthetic $onBackProgressed:Landroidx/activity/OnBackPressedDispatcher$1;

.field public final synthetic $onBackStarted:Landroidx/activity/OnBackPressedDispatcher$1;


# direct methods
.method public constructor <init>(Landroidx/activity/OnBackPressedDispatcher$1;Landroidx/activity/OnBackPressedDispatcher$1;Landroidx/activity/OnBackPressedDispatcher$3;Landroidx/activity/OnBackPressedDispatcher$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1;->$onBackStarted:Landroidx/activity/OnBackPressedDispatcher$1;

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1;->$onBackProgressed:Landroidx/activity/OnBackPressedDispatcher$1;

    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1;->$onBackInvoked:Landroidx/activity/OnBackPressedDispatcher$3;

    iput-object p4, p0, Landroidx/activity/OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1;->$onBackCancelled:Landroidx/activity/OnBackPressedDispatcher$3;

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1;->$onBackCancelled:Landroidx/activity/OnBackPressedDispatcher$3;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$3;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1;->$onBackInvoked:Landroidx/activity/OnBackPressedDispatcher$3;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$3;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/activity/BackEventCompat;

    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroid/window/BackEvent;)V

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1;->$onBackProgressed:Landroidx/activity/OnBackPressedDispatcher$1;

    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedDispatcher$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/activity/BackEventCompat;

    invoke-direct {v0, p1}, Landroidx/activity/BackEventCompat;-><init>(Landroid/window/BackEvent;)V

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$Api34Impl$createOnBackAnimationCallback$1;->$onBackStarted:Landroidx/activity/OnBackPressedDispatcher$1;

    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedDispatcher$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
