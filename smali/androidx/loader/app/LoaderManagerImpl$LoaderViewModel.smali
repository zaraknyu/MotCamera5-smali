.class public Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# static fields
.field public static final FACTORY:Landroidx/fragment/app/FragmentManagerViewModel$1;


# instance fields
.field public final mLoaders:Landroidx/collection/SparseArrayCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/fragment/app/FragmentManagerViewModel$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel$1;-><init>(I)V

    sput-object v0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->FACTORY:Landroidx/fragment/app/FragmentManagerViewModel$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    iput-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 5

    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderViewModel;->mLoaders:Landroidx/collection/SparseArrayCompat;

    iget v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method
