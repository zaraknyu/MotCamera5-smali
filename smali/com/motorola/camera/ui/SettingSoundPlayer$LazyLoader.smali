.class public abstract Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/common/base/Splitter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/base/Splitter;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Splitter;-><init>(IB)V

    sput-object v0, Lcom/motorola/camera/ui/SettingSoundPlayer$LazyLoader;->INSTANCE:Lcom/google/common/base/Splitter;

    return-void
.end method
