.class public abstract Lcom/motorola/camera/reflect/PowerManagerFW;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACQUIRE_CAUSES_CLI_WAKEUP:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CLI_WAKE_LOCK"

    const/16 v1, 0x4000

    invoke-static {v1, v0}, Lcom/motorola/camera/utility/ColorUtil;->getDeclaredInt(ILjava/lang/String;)I

    const-string v0, "ACQUIRE_CAUSES_CLI_WAKEUP"

    const/high16 v1, 0x1000000

    invoke-static {v1, v0}, Lcom/motorola/camera/utility/ColorUtil;->getDeclaredInt(ILjava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/camera/reflect/PowerManagerFW;->ACQUIRE_CAUSES_CLI_WAKEUP:I

    return-void
.end method
