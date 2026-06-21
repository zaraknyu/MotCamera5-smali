.class public final Landroidx/fragment/app/Fragment$2;
.super Landroidx/fragment/app/Fragment$OnPreAttachedListener;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/Fragment$2;->this$0:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final onPreAttached()V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/Fragment$2;->this$0:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    iget-object v0, v0, Landroidx/savedstate/SavedStateRegistryController;->impl:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    invoke-virtual {v0}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->performAttach()V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleKt;->enableSavedStateHandles(Landroidx/savedstate/SavedStateRegistryOwner;)V

    return-void
.end method
