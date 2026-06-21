.class public final synthetic Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceImpl;->updateDebugMasks(Landroid/content/SharedPreferences;)V

    :cond_0
    return-void
.end method
