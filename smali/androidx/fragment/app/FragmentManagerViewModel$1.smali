.class public final Landroidx/fragment/app/FragmentManagerViewModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/FragmentManagerViewModel$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 0

    iget p0, p0, Landroidx/fragment/app/FragmentManagerViewModel$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-direct {p0}, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Landroidx/fragment/app/FragmentManagerViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
