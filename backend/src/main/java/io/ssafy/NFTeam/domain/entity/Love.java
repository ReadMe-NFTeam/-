package io.ssafy.NFTeam.domain.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Love {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long loveId;

    @NotNull
    @Column(name = "wallet_address")
    private String walletAddress;

    @NotNull
    @Column(name = "token_id")
    private Integer tokenId;
}
