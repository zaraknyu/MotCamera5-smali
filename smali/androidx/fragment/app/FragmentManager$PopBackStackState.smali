.class public final Landroidx/fragment/app/FragmentManager$PopBackStackState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OpGenerator;


# instance fields
.field public final mId:I

.field public final synthetic this$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    iput p2, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mId:I

    return-void
.end method


# virtual methods
.method public final generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->this$0:Landroidx/fragment/app/FragmentManager;

    iget-object v1, v0, Landroidx/fragment/app/FragmentManager;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    iget p0, p0, Landroidx/fragment/app/FragmentManager$PopBackStackState;->mId:I

    if-eqz v1, :cond_0

    if-gez p0, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p0, v1}, Landroidx/fragment/app/FragmentManager;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p0

    return p0
.end method
