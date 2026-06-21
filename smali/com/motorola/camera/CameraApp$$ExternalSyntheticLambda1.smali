.class public final synthetic Lcom/motorola/camera/CameraApp$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/CameraApp$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/CameraApp$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/CameraApp$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/CameraApp$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-static {p0, p1}, Lcom/motorola/camera/mcf/McfMetadata;->$r8$lambda$RBSoM8Xoz6q9s9lts8U-eUpso5o(Ljava/lang/String;Ljava/lang/reflect/Field;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/motorola/camera/CameraApp;->LOCALES_RTL:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
