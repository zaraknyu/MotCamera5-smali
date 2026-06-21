.class public final Lh/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/activity/ComponentActivity;

.field public final b:Lkotlin/jvm/functions/Function1;

.field public final c:Landroidx/activity/result/ActivityResultRegistry$register$2;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/h;->a:Landroidx/activity/ComponentActivity;

    iput-object p2, p0, Lh/h;->b:Lkotlin/jvm/functions/Function1;

    new-instance p2, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;-><init>(I)V

    new-instance v0, Lh/h$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lh/h$$ExternalSyntheticLambda0;-><init>(Lh/h;)V

    iget-object v1, p1, Landroidx/activity/ComponentActivity;->activityResultRegistry:Landroidx/activity/ComponentActivity$activityResultRegistry$1;

    const-string v2, "registry"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "activity_rq#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroidx/activity/ComponentActivity;->nextLocalRequestCode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, v0}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultRegistry$register$2;

    move-result-object p1

    iput-object p1, p0, Lh/h;->c:Landroidx/activity/result/ActivityResultRegistry$register$2;

    const-string p1, "com.adobe.scan.android"

    iput-object p1, p0, Lh/h;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lh/h;->isAdobeScanInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.adobe.scan.android.SplashActivity"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    iget-object p0, p0, Lh/h;->d:Ljava/lang/String;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isAdobeScanInstalled()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lh/h;->a:Landroidx/activity/ComponentActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p0, p0, Lh/h;->d:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method
