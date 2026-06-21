.class public final Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public record(Landroid/os/Bundle;Ljava/lang/Boolean;)V
    .locals 0

    if-nez p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/analytics/Attributes/BooleanAttribute;->mName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
