.class public abstract Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/util/Check;


# instance fields
.field public final synthetic $r8$classId:I

.field public final description:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck;->$r8$classId:I

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck;->description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck;->description:Ljava/lang/String;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck;->description:Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/util/MemberKindCheck;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->invoke(Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->invoke(Lkotlin/reflect/jvm/internal/impl/util/Check;Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
