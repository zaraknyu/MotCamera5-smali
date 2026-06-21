.class public final Landroidx/fragment/app/FragmentManager$1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final cancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public enabledChangedCallback:Lkotlin/jvm/internal/FunctionReferenceImpl;

.field public isEnabled:Z

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/window/DialogWrapper$2;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/FragmentManager$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager$1;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/FragmentManager$1;->$r8$classId:I

    .line 5
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManager$1;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManager$1;->isEnabled:Z

    .line 3
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$1;->cancellables:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method
