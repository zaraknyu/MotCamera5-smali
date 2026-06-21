.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ReceiverValue;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/SourceElement;


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

.field public static final NO_SOURCE_FILE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;->NO_SOURCE_FILE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;-><init>(I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This method should not be called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This method should not be called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This method should not be called"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/SourceFile$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "NO_SOURCE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
