.class public final Lf/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public final a:Lf/x;


# direct methods
.method public constructor <init>(Lf/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/w;->a:Lf/x;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/MutableCreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 0

    new-instance p1, Lf/C;

    iget-object p0, p0, Lf/w;->a:Lf/x;

    invoke-direct {p1, p0}, Lf/C;-><init>(Lf/x;)V

    return-object p1
.end method
